git init git-usage
cd git-usage
mkdir src
#r0 
git config --global user.name "red"
git config --global user.email "red@xxx.xx"
cp -fr ../commits/commit0/ ./src/
git add .
git commit -m "initial commit r0"
echo "red does commit r0"

#r1
git checkout master
cp -fr ../commits/commit1/ ./src/
git add .
git commit -m "initial commit r1"
echo "red does commit r1"

#r2
git checkout master
cp -fr ../commits/commit2/ ./src/
git add .
git commit -m "initial commit r2"
echo "red does commit r2"

#r3
git checkout -b branch_from_r2
cp -fr ../commits/commit3/ ./src/
git add .
git commit -m "initial commit r3"
echo "red does commit r4"

#r4
git config --global user.name "blue"
git config --global user.email "blue@xxx.xx"
git checkout -b branch_from_r3
cp -fr ../commits/commit4/ ./src/
git add .
git commit -m "initial commit r4"
echo "blue does commit r4"

#r5
git config --global user.name "red"
git config --global user.email "red@xxx.xx"
git checkout master
cp -fr ../commits/commit5/ ./src/
git add .
git commit -m "initial commit r5"
echo "red does commit r5"

#r6
git checkout master
cp -fr ../commits/commit6/ ./src/
git add .
git commit -m "initial commit r6"
echo "red does commit r6"

#r7
git config --global user.name "blue"
git config --global user.email "blue@xxx.xx"
git checkout -b branch_from_r6
cp -fr ../commits/commit7/ ./src/
git add .
git commit -m "initial commit r7"
echo "blue does commit r7"

#r8
git checkout branch_from_r3
cp -fr ../commits/commit8/ ./src/
git add .
git commit -m "initial commit r8"
echo "blue does commit r8"

#r9
git config --global user.name "red"
git config --global user.email "red@xxx.xx"
git checkout -b branch_from_r8
cp -fr ../commits/commit9/ ./src/
git add .
git commit -m "initial commit r9"
echo "red does commit r9"

#r10
git checkout branch_from_r8
cp -fr ../commits/commit10/ ./src/
git add .
git commit -m "initial commit r10"
echo "red does commit r10"

#r11
git config --global user.name "blue"
git config --global user.email "blue@xxx.xx"
git checkout -b branch_from_r10
cp -fr ../commits/commit11/ ./src/
git add .
git commit -m "initial commit r11"
echo "blue does commit r11"

#r12
git config --global user.name "red"
git config --global user.email "red@xxx.xx"
git checkout branch_from_r8
cp -fr ../commits/commit12/ ./src/
git add .
git commit -m "initial commit r12"
echo "red does commit r12"

#r13
git config --global user.name "blue"
git config --global user.email "blue@xxx.xx"
git checkout branch_from_r10
cp -fr ../commits/commit13/ ./src/
git add .
git commit -m "initial commit r13"
echo "blue does commit r13"

#r14
git checkout branch_from_r6

git merge -s recursive -X ours branch_from_r10 -m "merge branch_from_r10 to master"
    git branch -d branch_from_r10

cp -fr ../commits/commit14/ ./src/
git add .
git commit -m "initial commit r14"
echo "blue does commit r14"

#r15
git config --global user.name "red"
git config --global user.email "red@xxx.xx"
git checkout branch_from_r2

git merge -s recursive -X ours branch_from_r6 -m "merge branch_from_r6 to master"
    git branch -d branch_from_r6

cp -fr ../commits/commit15/ ./src/
git add .
git commit -m "initial commit r15"
echo "red does commit r15"

#r16
git config --global user.name "blue"
git config --global user.email "blue@xxx.xx"
git checkout branch_from_r3
cp -fr ../commits/commit16/ ./src/
git add .
git commit -m "initial commit r16"
echo "blue does commit r16"

#r17
git config --global user.name "red"
git config --global user.email "red@xxx.xx"
git checkout branch_from_r2

git merge -s recursive -X ours  branch_from_r3 -m "merge branch_from_r3 to master"
    git branch -d branch_from_r3


cp -fr ../commits/commit17/ ./src/
git add .
git commit -m "initial commit r17"
echo "red does commit r17"

#r18
git checkout branch_from_r8
cp -fr ../commits/commit18/ ./src/
git add .
git commit -m "initial commit r18"
echo "red does commit r18"

#r19
git checkout master

git merge -s recursive -X ours branch_from_r8 -m "merge branch_from_r8 to master"
    git branch -d branch_from_r8


cp -fr ../commits/commit19/ ./src/
git add .
git commit -m "initial commit r19"
echo "red does commit r19"

#r20
git checkout branch_from_r2
cp -fr ../commits/commit20/ ./src/
git add .
git commit -m "initial commit r20"
echo "red does commit r20"

#r21
git checkout master

git merge -s recursive -X ours branch_from_r2 -m "merge branch_from_r2 to master"
    git branch -d branch_from_r2

cp -fr ../commits/commit21/ ./src/
git add .
git commit -m "initial commit r21"
echo "red does commit r21"
