@import 'lib/metapolator/metamaster.cps';

glyph, point > center, contour > p, component  {
    sidebearingLeftSummand: 0.5 * master:SpacingS + 0.5 * glyph:SpacingS;
    sidebearingRightSummand: 0.5 * master:SpacingS + 0.5 * glyph:SpacingS;
    widthFactor: master:WidthF * glyph:WidthF;
    heightFactor: master:HeightF * glyph:HeightF;
}

point > left, point > right, contour > p {
    weightFactor: master:WeightF * glyph:WeightF;
}

master {
    SpacingS: 0;
    WidthF: 1;
    HeightF: 1;
    WeightF: 1;
    /* move to properties DB */
    baseMaster: S"master#base";
}

glyph {
    SpacingS: 0;
    WidthF: 1;
    HeightF: 1;
    WeightF: 1;
}
