document.addEventListener("DOMContentLoaded", function bounce(){
    const canvas = document.getElementById("mycanvas");
    const ctx = canvas.getContext("2d");
    ctx.fillStyle = "red"
    ctx.fillRect(10, 20, 500, 500)

    ctx.beginPath()
    ctx.arc(100, 75, 50, 0, 2 * Math.PI);
    ctx.lineWidth = 10
    ctx.fillStyle = "blue"
    ctx.fill()
    ctx.stroke()
    window.requestAnimationFrame(bounce)
});

setInterval(bounce, 1000)
