#include <OpenXLSX.hpp>
#include <iostream>
#include <string>

using namespace OpenXLSX;

int demo_p()
{
    XLDocument doc;
    doc.create("fxlsx.xlsx");
    auto wks = doc.workbook().worksheet("Sheet1");
    wks.cell("A1").value() = "Hello Fortran";
    doc.save();
    return 0;
}

extern "C"
{
    void demo()
    {
        demo_p();
    }
}
