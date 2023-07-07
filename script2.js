function PrimeNo(num){
    let flag = 0;

    if(num===0 || num===1){
        flag = 0;
    }

    for(let i=2; i<=num/2; i++){
        if(num%i === 0){
            flag = 1;
            break;
        }
    }

    if(flag === 1){
        return ("not a prime number")
    }
    else{
        return ("prime number")
    }

}

let ans = PrimeNo(7)
console.log(ans)