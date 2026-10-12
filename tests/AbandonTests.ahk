#Requires AutoHotkey v2.0

#Include Lib\test_includes.ahk
#Include ..\Lib\abandon.ahk

if (A_ScriptFullPath = A_LineFile)
    Yunit
        .Use(YunitJUnit, YunitOutputDebug, YunitStdOut, YunitExitOnTestFailure)
        .Test(AbandonTests)

path(p) => A_ScriptDir "\screenshots\abandon\" p "\*"
class AbandonTests {
    testIsAbandonTabOptionVisible() => forAllInPath(path("isAbandonTabOptionVisible"), () => isAbandonTabOptionVisible())
    testFindMatchDetailsAbandonButton() => forAllInPath(path("findMatchDetailsAbandonButton"), () => findMatchDetailsAbandonButton())
    testFindAbandonConfirmButton() => forAllInPath(path("findAbandonConfirmButton"), () => findAbandonConfirmButton())
}