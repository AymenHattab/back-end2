
import sql from "mysql2"

//configuration base de donnee 
export const db= sql.createPool({
    host:"bbpkrs9mijn0sn7kusbc-mysql.services.clever-cloud.com",
    user:"umb5il8bn2h7e0zp",
    password:"3UznjQLEXmmkwLcK0OVf",
    database:"bbpkrs9mijn0sn7kusbc",
    port : "3306"
})
