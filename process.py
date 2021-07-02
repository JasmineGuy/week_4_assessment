log_file = open("um-server-01.txt")
# saving the file to a variable called log_file so that we can manipulate the data therein


def sales_reports(log_file):
    for line in log_file:
        line = line.rstrip()
        day = line[0:3]
        if day == "Mon":
            print(line)


# This function takes in the file as an argument and loops through each line in the file. For every line in the file, it performs the rstrip method to remove any trailing characters--ie spaces. Then it takes what is in the line at index 0 up to the third letter and saves it to a variable called 'day'. Then if the value of "day" is equal to Tue/Mon on any line it prints the line to the console.

sales_reports(log_file)
# This line invokes the function above
