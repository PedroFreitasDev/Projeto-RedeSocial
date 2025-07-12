require('dotenv').config()
const api = require('./src/api')


//inicializar o servidor
api.listen(process.env.PORT,()=>{
    console.log('\n Api funcionando!')
})