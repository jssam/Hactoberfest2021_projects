/*
C program to check whether a student is pass or fail, if it requires total 40% and 
at least 33% in each subject to pass.
*/
#include <stdio.h>
int main(int argc, char const *argv[])
{
    float tmarkseng, tmarksmaths, tmarksscience, tmarksssc, tmarkshindi, tmarkscomp;
    float omarkseng, omarksmaths, omarksscience, omarksssc, omarkshindi, omarkscomp;
    float Percentage_eng, Percentage_maths, Percentage_science, Percentage_ssc, Percentage_hindi, Percentage_comp;
    float tmarks, omarks, Percentage_marks;

    printf("Enter total marks of English:\n");
    scanf("%f", &tmarkseng);
    printf("Enter obtained marks of English:\n");
    scanf("%f", &omarkseng);
    Percentage_eng = omarkseng / tmarkseng * 100;

    printf("Enter total marks of Maths:\n");
    scanf("%f", &tmarksmaths);
    printf("Enter obtained marks of Maths:\n");
    scanf("%f", &omarksmaths);
    Percentage_maths = omarksmaths / tmarksmaths * 100;

    printf("Enter total marks of Science:\n");
    scanf("%f", &tmarksscience);
    printf("Enter obtained marks of Science:\n");
    scanf("%f", &omarksscience);
    Percentage_science = omarksscience / tmarksscience * 100;

    printf("Enter total marks of Social Science:\n");
    scanf("%f", &tmarksssc);
    printf("Enter total marks of Social Science:\n");
    scanf("%f", &omarksssc);
    Percentage_ssc = omarksssc / tmarksssc * 100;

    printf("Enter total marks of hindi:\n");
    scanf("%f", &tmarkshindi);
    printf("Enter total marks of hindi:\n");
    scanf("%f", &omarkshindi);
    Percentage_hindi = omarkshindi / tmarkshindi * 100;

    printf("Enter total marks of Computer Science:\n");
    scanf("%f", &tmarkscomp);
    printf("Enter obtained marks of Computer Science:\n");
    scanf("%f", &omarkscomp);
    Percentage_comp = omarkscomp / tmarkscomp * 100;

    tmarks = tmarkseng + tmarksmaths + tmarksscience + tmarksssc + tmarkshindi + tmarkscomp;
    omarks = omarkseng + omarksmaths + omarksscience + omarksssc + omarkshindi + omarkscomp;
    Percentage_marks = omarks / tmarks * 100;

    if (Percentage_eng >= 33 && Percentage_maths >= 33 && Percentage_science >= 33 && Percentage_ssc >= 33 && Percentage_hindi >= 33 && Percentage_comp >= 33 && Percentage_marks >= 40)
    {
        printf("Congratulations! You are promoted to next class.");
    }
    else
    {
        printf("Alas. You have not qualified to get promoted to next class");
    }

    return 0;
}