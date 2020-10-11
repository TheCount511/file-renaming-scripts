const fs = require('fs')
const files = fs.readdirSync(__dirname)

for (const file of files) {
  if (file.endsWith('')) {
    fs.rename(
      `${__dirname}/${file}`,
      `${__dirname}/${file.concat(".ntpp")}`,
      err => {
        console.log(err)
      }
    )
  }
}