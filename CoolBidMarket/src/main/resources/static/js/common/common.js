	function formatStringToNumber(numberString, type){
			    let num1 = 0;
			    if (numberString == null) {
			        numberString = 0;
			    }
			    if (type == 1) {
			        //string là số nguyên
			        num1 = numberString.replace(/\./g,"");
			        
			    } else if (type == 2) {
			        //string là số thập phân nhưng dùng dấu .
			        numberString = numberString.replace(/\./g,"");
			        let arrayNumber = numberString.split(",");
			        num1 = Number(arrayNumber[0]);
			        if (arrayNumber[1] && arrayNumber[1] > 0 && arrayNumber[1] != "") {
			            num1 = num1 + "." + arrayNumber[1];
			        }
			        num1 = Math.round((parseFloat(num1) + Number.EPSILON) * 10000) / 10000;
			    }
			    return isNaN(Number(num1)) ? 0 : Number(num1);
			}
						
			function formatNumberToString(number, type){
			    if (number == null) {
			        number = 0;
			    }
			    if (type == 1) {
			        number = number.toString();
			        let num1 = parseFloat(number);
			        return num1.toLocaleString("vi");
			    } else if (type == 2) {
			        number = Math.round((parseFloat(number) + Number.EPSILON) * 10) / 10;
			        number = number.toString();
			        let arrayNumber = number.split(".");
			        let num1 = arrayNumber[0];
			        let num2 = arrayNumber[1];
			        num1 = parseFloat(num1).toLocaleString("en");
			        if (num2 > 0) {
			            num1 = num1 + "." + num2;
			        }
			        return num1;
			    }
			}

			function formatDateSpecial(date, second) {
				let a = moment(date).add(second, 'second').format("YYYY-MM-DD HH:mm:ss");
				return a;
			}

			function formatDate(date) {
				let a = moment(date).format("YYYY-MM-DD HH:mm:ss");
				return a;
			}
