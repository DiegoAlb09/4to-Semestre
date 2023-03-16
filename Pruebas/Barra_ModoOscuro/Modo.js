document.addEventListener("DOMContentLoaded", function() {
    let slider = this.getElementById("brightness");
    slider.addEventListener("input", adjustSlider);
    adjustSlider(slider);
});

function adjustSlider(e) {
    let body = document.body,
        switchLightMin = 40,
        switchLightMax = 100,
        tar = e.target || e,
        pct = +tar.value / +tar.max,
        L1 = pct * (switchLightMax - switchLightMin) + switchLightMin,
        L2 = L1 -10,
        L3 = L1 -37,
        L = [L1, L2, L3],
        thumbHueMin = 0,
        thumbHueMax = 120,
        thumbHue = pct * (thumbHueMax - thumbHueMin) + thumbHueMin,
        thumbSat = 90.4
    body.style.setProperty("--p", "hsl(${thumbHSL})");
    body.style.setProperty("--pT", "hsla(${thumbHSL},0)");

}