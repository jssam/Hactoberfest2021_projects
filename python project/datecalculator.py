class DaysToYear():
    def __init__(self, days):
        self.days = days

    def main(self):
        if self.days >= 365:
            numberOfYears = round(self.days/365)
        else:
            numberOfYears = 0

        daysLeftAfterYears = self.days%365

        if daysLeftAfterYears >= 30:
            numberOfMonths = round(daysLeftAfterYears/30.417)

            daysLeftAfterMonths = round(daysLeftAfterYears%30.417)
        else:
            numberOfMonths = 0
            
            daysLeftAfterMonths = daysLeftAfterYears


        year = "year"
        month = "month"
        day = "day"


        if numberOfYears < 1:
            year = "years"
        if numberOfMonths < 1:
            month = "months"
        if daysLeftAfterMonths < 1:
            day = "days"

        return (f"\n{self.days} days = {numberOfYears} {year}, {numberOfMonths} {month}, {daysLeftAfterMonths} {day}")


class YearsToDays():
    def __init__(self, years, months, idays):
        self.years = years
        self.months = months
        self.idays = idays

    def main(self):
        days = self.idays + (self.months*30) + (self.years*365)

        return (f"\n{self.years} year, {self.months} months, {self.idays} days = {days} days")


class DurationBetweenTwoDates():
    def __init__(self, startingDate, endingDate):
        self.startingDate = startingDate
        self.endingDate = endingDate

    def main(self):
        startingDateList = self.startingDate.split("/")
        endingDateList = self.endingDate.split("/")

        startingYear = int(startingDateList[0])
        startingMonth = int(startingDateList[1])
        startingDay = int(startingDateList[2])

        endingYear = int(endingDateList[0])
        endingMonth = int(endingDateList[1])
        endingDay = int(endingDateList[2])

        if endingDay < startingDay:
            endingDay += 30
            if endingMonth < 1:
                endingMonth += 12
                endingYear -= 1

            endingDateList[1] -= 1

        if endingMonth < startingMonth:
            endingMonth += 12
            endingYear -= 1


        days = endingDay - startingDay
        months = endingMonth - startingMonth
        year = endingYear - startingYear

        return (f"\nDuration between {self.startingDate} and {self.endingDate} is {year} years, {months} months, {days} days")


if __name__ == '__main__':
    print("1.Days to year\n2.Years to days\n3.Duration between two years\nEnter the serial number:", end="  ")
    userChoice = int(input())

    if userChoice == 1:
        days = int(input("Enter the number of days:  "))
        
        print(DaysToYear(days).main())

    elif userChoice == 2:
        years = int(input("Enter the number of years: "))
        months = int(input("Enter the number of months: "))
        days = int(input("Enter the number of days: "))
        
        print(YearsToDays(years, months, days).main())

    elif userChoice == 3:
        startingDate = input("Enter the starting year(in yyyy/mm/dd format): ")
        endingDate = input("Enter the ending date(in yyyymmdd format): ")
        
        print(DurationBetweenTwoDates(startingDate, endingDate).main())

    else:
        print("Enter a correct serial number")