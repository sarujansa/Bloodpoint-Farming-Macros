#Requires AutoHotkey v2+

#Include coords.ahk
#Include ocr_shim.ahk
#Include subscreenshot.ahk

/**
 * Prompt in the top right of the screen when abandon is available.
 * This may appear sooner than desired if the killer slugs you twice in a row.
 */
isAbandonTabOptionVisible() => findAbandonText(Coords2K(2240, 88), Coords2K(2414, 141))

/**
 * Bottom right.
 * 10.1.2: DBD sometimes presents QUIT here, even though ABANDON is available.
 * 10.2.0: SURRENDER for surv, END TRIAL for killer, ABANDON for either sometimes, QUIT if you press it too fast.
 */
findMatchDetailsAbandonButton() => findAbandonText(Coords2K(2140, 1260), Coords2K(2560, 1440))

findAbandonConfirmButton() => findAbandonText(Coords2K(1650, 1000), Coords2K(2000, 1300))

findAbandonText(tl, br) {
    result := OcrShim.fromRect(tl, br)
    logger.debug(result.Text)
    return (
        result.findWord("ABANDON") or
        result.findWord("SURRENDER") or
        result.findWord("QUIT") or
        result.findWord("TRIAL")
    )
}
