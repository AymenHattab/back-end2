
import sql from "mysql2"

//configuration base de donnee 
export const db= sql.createPool({
    host:"192.168.1.24",
    user:"root",
    password:"",
    database:"hgedb04",
    port : "3306"
})
