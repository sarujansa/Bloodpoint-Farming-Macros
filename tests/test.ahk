#Include Lib\test_includes.ahk
#Include AbandonTests.ahk
#Include AutoUpdateTests.ahk
#Include AutospenderTests.ahk
#Include DebuggingTests.ahk
#Include InputMappingTests.ahk
#Include PixelCheckTests.ahk
#Include PregameTests.ahk
#Include AbandonTests.ahk
#Include StringsTests.ahk
#Include TallyTests.ahk

Yunit
    .Use(YunitJUnit, YunitOutputDebug, YunitStdOut, YunitExitOnTestFailure)
    .Test(
        AbandonTests,
        AutoSpenderTests,
        AutoUpdateTests,
        DebuggingTests,
        InputMappingTests,
        PixelCheckTests,
        PregameTests,
        StringsTests,
        TallyTests,
    )