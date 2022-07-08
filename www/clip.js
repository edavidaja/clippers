async function cp(copytarget) {
  try {
    await navigator.clipboard.writeText(copytarget)
    console.log("copied text");
  } catch (err) {
    console.err("failed to copy:", err)
  }
}

$("#clippers").on("shiny:value", function(event) {
    cp(event.value)
});
