function getRandomWord(): string {
    const n = Math.floor(Math.random() * 62);
    if (n < 10) {
        return n.toString();
    }
    if (n < 36) {
        return String.fromCharCode(n + 55);
    }
    return String.fromCharCode(n + 61);
}

function getRandomWords(length: number): string {
    let str = '';
    for (let i = 0; i < length; i++) {
        str += getRandomWord();
    }
    return str;
}
