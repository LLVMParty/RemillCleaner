#include <cstdlib>
#include <map>
#include <vector>

#include <llvm/Support/raw_ostream.h>
#include <llvm/Support/FormattedStream.h>
#include <llvm/Support/SourceMgr.h>
#include <llvm/Support/ToolOutputFile.h>
#include <llvm/Support/FileSystem.h>
#include <llvm/IRReader/IRReader.h>
#include <llvm/IR/IRBuilder.h>
#include <llvm/IR/Instructions.h>
#include <llvm/Bitcode/BitcodeWriter.h>
#include <llvm/Transforms/Utils/Cloning.h>

#include "Utility.hpp"

using namespace llvm;

static void ProcessModule(Module& M, const Module& S)
{
    // Load semantics
    std::vector<std::string> semanticFunctions;

    // Clone globals
    for (const auto& G : S.globals())
    {
        
    }

    for (const Function& F : S.functions())
    {
        auto DeclF = M.getFunction(F.getName());
        if (DeclF)
        {
            outs() << "Clone remill intrinsic: " << F.getName() << "\n";
            CloneFunctionInto(&F, DeclF);
        }
    }

    // TODO: inline and optimize
}

int main(int argc, char** argv)
{
    if (argc < 3)
    {
        puts("UsagE: RemillCleaner semantics.bc in.bc out.bc");
        return EXIT_FAILURE;
    }
    auto semFile = argv[1];
    auto inFile = argv[2];
    auto outFile = argv[3];

    // Load module
    LLVMContext C;
    SMDiagnostic Err;
    auto M = parseIRFile(inFile, Err, C);
    if (!M)
    {
        outs() << "Failed to parse IR: " << Err.getMessage() << "\n";
        return EXIT_FAILURE;
    }

    auto S = parseIRFile(semFile, Err, C);
    if (!S)
    {
        outs() << "Failed to semantics IR: " << Err.getMessage() << "\n";
        return EXIT_FAILURE;
    }

    // Process module
    try
    {
        ProcessModule(*M, *S);
    }
    catch (const std::exception& x)
    {
        outs() << x.what() << "\n";
        return EXIT_FAILURE;
    }

    // Write module
    std::error_code EC;
    ToolOutputFile Out(outFile, EC, sys::fs::OF_None);
    WriteBitcodeToFile(*M, Out.os(), true);
    if (EC)
    {
        outs() << "Failed to write IR: " << EC.message() << "\n";
        return EXIT_FAILURE;
    }
    Out.keep();

    return EXIT_SUCCESS;
}