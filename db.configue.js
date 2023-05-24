
import sql from "mysql2"

//configuration base de donnee 
export const db= sql.createPool({
    host:"bxbwlcscpjw3rwrz4blv-mysql.services.clever-cloud.com",
    user:"ulbrxwjvmx3vmosa",
    password:"gzwIJvpQrhPnM5KJyBKc",
    database:"bxbwlcscpjw3rwrz4blv"
})
