#Color Schemes
Red='\033[1;31m'
Purple='\033[1;35m'
Yellow='\033[1;33m'
NoColor='\033[0m'

Licensing()
{
	if [ ! -f acknowledgement.txt ]
	then
	echo -e "${Purple}"
	echo -e "Greetings Sir.Thank You For Using Our Service.\nA copy of acknowledgement file will be created.Please preserve it.\n"
	touch acknowledgement.txt
	echo -e "run.sh or run is a product of Guava_Slice.\nYou are free to Modify or Redistribute it as you please but please\ngive due credits wherever necessary.\n\nCreated on:18 Jan 2021\t\t\t@author: Subhadeep Mandal\nLinkedin: linkedin.com/in/mandalsubhadeep\n" > acknowledgement.txt
	echo -e "${NoColor}"
	cat acknowledgement.txt
	fi
}

Licensing
#Runs Output for an existing file
if [ -f $1.java ]
then echo -e "${Red}OUTPUT:${NoColor}"
javac $1.java
java $*

#A Java class file will be created
else touch $1.java
echo -e "public class $1\n{\n\tpublic static void main(String []args)\n\t{\n\t\tSystem.out.println();\n\t}\n}" > $1.java

#Completion Prompt
echo -e "${Yellow}File ${Purple}$1.java${Yellow} created successfully"
fi
