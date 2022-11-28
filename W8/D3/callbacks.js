function titleize(nameArr) {
    updatedNameArr = nameArr.map((name) => { return `Mx. ${name} Jingleheimer Schmidt`});
    updatedNameArr.forEach((el) => { console.log(el)})
}



function Elephant(name, height, tricksArray) {
    this.name = name
    this.height = height
    this.tricksArray = tricksArray
}

Elephant.prototype.trumpet = function(){
    console.log(`${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`)
}

let bartholemew = new Elephant("bartholemew", 108, [])
bartholemew.trumpet()

for(let i = 0; i < .length; i++) {
    
}

