const { WAConnection } = require("@adiwajshing/baileys")
const qrcode = require("qrcode-terminal")
const moment = require("moment-timezone")
const fs = require("fs")
const figlet = require('figlet')
const time = moment().tz('Asia/Jakarta').format("HH:mm:ss")
const color = require('./lib/color')
const { wait, simih, getBuffer, h2k, generateMessageID, getGroupAdmins, getRandom, banner, start, info, success, close } = require('./lib/functions')

nocache('./denz.js', module => console.log(`'${module}' Updated!`))
nocache('./welcome.js', module => console.log(`'${module}' Updated!`))

async function starts() {
    const denz = new WAConnection()
    denz.version = [2, 2119, 6]
    denz.on('qr', qr => {
        qrcode.generate(qr, { small: true })
        console.log(`[ ${time} ] Scan this qr code`)
    })

    denz.on('credentials-updated', () => {
        const authInfo = denz.base64EncodedAuthInfo()
        console.log(`credentials updated!`)
    
        fs.writeFileSync('./QRnya.json', JSON.stringify(authInfo, null, '\t'))
    })
    
    fs.existsSync('./QRnya.json') && denz.loadAuthInfo('./QRnya.json')
    
    denz.connect();
	
	denz.on('group-participants-update', async (anu) => {
        require('./welcome.js')(denz, anu)
    })
    
	denz.on('message-new', async (mek) => {
        require('./denz.js')(denz, mek)
    })
    }
    
/**
 * Uncache if there is file change
 * @param {string} module Module name or path
 * @param {function} cb <optional> 
 */
function nocache(module, cb = () => { }) {
    console.log('Module', `'${module}'`, 'is now being watched for changes')
    fs.watchFile(require.resolve(module), async () => {
        await uncache(require.resolve(module))
        cb(module)
    })
}

const jmn = moment.tz('Asia/Jakarta').format('HH:mm:ss')
				let d = new Date
				let locale = 'id'
				let gmt = new Date(0).getTime() - new Date('1 Januari 2021').getTime()
				const weton = ['Pahing', 'Pon','Wage','Kliwon','Legi'][Math.floor(((d * 1) + gmt) / 84600000) % 5]
				const week = d.toLocaleDateString(locale, { weekday: 'long' })
				const calender = d.toLocaleDateString(locale, {
				day: 'numeric',
				month: 'long',
				year: 'numeric'
				})
const sekarang = new Date().getTime();
			//-
			//WAKTU
			var ase = new Date();
                        var jamss = ase.getHours();
                         switch(jamss){
                case 0: jamss = "Midnight"; break;
                case 1: jamss = "Midnight"; break;
                case 2: jamss = "Midnight"; break;
                case 3: jamss = "Midnight"; break;
                case 4: jamss = "Midnight"; break;
                case 5: jamss = "Dawn"; break;
                case 6: jamss = "Morning"; break;
                case 7: jamss = "Morning"; break;
                case 8: jamss = "Morning"; break;
                case 9: jamss = "Morning"; break;
                case 10: jamss = "Morning"; break;
                case 11: jamss = "Afternoon"; break;
                case 12: jamss = "Zuhur"; break;
                case 13: jamss = "Afternoon"; break;
                case 14: jamss = "Afternoon"; break;
                case 15: jamss = "Asr"; break;
                case 16: jamss = "Afternoon"; break;
                case 17: jamss = "Evening"; break;
                case 18: jamss = "Maghrib"; break;
                case 19: jamss = "Isha"; break;
                case 20: jamss = "Night"; break;
                case 21: jamss = "Night"; break;
                case 22: jamss = "Midnight"; break;
                case 23: jamss = "Midnight"; break;
            }
            var tampilUcapan = "" + jamss;
console.log(color(figlet.textSync('Bitch | Boot', {
		font: 'Standard',
		horizontalLayout: 'default',
		vertivalLayout: 'default',
		width: 80,
		whitespaceBreak: false
	}), 'yellow'))
	console.log(color(' ────────────────────────────────────────────────────'))
	console.log(color('│ + Github : https://github.com/dcode-denpa          │'))
	console.log(color('│ + Contact : https://wa.me/6285866295942            │'))
	console.log(color('│ + Instagram : https://instagram.com/denssptraa     │'))
	console.log(color(' ────────────────────────────────────────────────────'))
	console.log(color('┌', 'white'), color(`${tampilUcapan}`, 'magenta'))
	console.log(color('└', 'white'), color(`${calender} > ${time}`, 'orange'))
	console.log(color('✓ bitchboot created by denis putra', 'cyan'))

/**
 * Uncache a module
 * @param {string} module Module name or path
 */
function uncache(module = '.') {
    return new Promise((resolve, reject) => {
        try {
            delete require.cache[require.resolve(module)]
            resolve()
        } catch (e) {
            reject(e)
        }
    })
}
starts()