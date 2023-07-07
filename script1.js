function gradeCalculation(marks){
    
    const result = []
    for(const item in marks){
        const grade = marks[item];
        switch (true) {
            case (grade>=90 && grade<=100):
              result.push('A');
              break;
            case (grade>=80 && grade<90):
                result.push('B');
                break;
            case (grade>=70 && grade<80):
                result.push('C');
              break;
            case (grade>=60 && grade<70):
                result.push('D');
              break;
            default:
                result.push('f');
          }      
            
    }
    return result;
    
}

let result = gradeCalculation([100, 65, 70, 80, 59])
console.log(result)