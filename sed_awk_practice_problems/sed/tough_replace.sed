s/([a-zA-Z]{1})([a-zA-Z]*)/\U\1\L\2/g  # Capitalize first letter of each line and change rest to lower case
s/\*([a-zA-Z]{1})/\.\U\1/g #Capitalize letter after space
s/\.\s+([a-zA-Z])/. (\U\1)/g  # Capitalize and enclose in brackets after period+space
