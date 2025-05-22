

#!/bin/bash

svnadmin create git-usage
REPO_URL="file:///Users/oaoaooa/my_svn_repo"

mkdir -p project/{trunk,branches,tags}
svn import project $REPO_URL -m "Initial project structure"

svn checkout $REPO_URL/trunk svn-workspace
cd svn-usage

# r0
cp -fr ../commits/commit0/* .
svn add *
svn commit -m "initial commit r0" --username "red"
echo "red does commit r0"

# r1
cp -fr ../commits/commit1/* .
svn add *
svn commit -m "initial commit r1" --username "red"
echo "red does commit r1"

# r2
cp -fr ../commits/commit2/* .
svn add *
svn commit -m "initial commit r2" --username "red"
echo "red does commit r2"

# r3
cd ..
svn copy $REPO_URL/trunk $REPO_URL/branches/branch_from_r2 -m "Create branch_from_r2" --author "red"
svn checkout $REPO_URL/branches/branch_from_r2 branch_from_r2
cd branch_from_r2

cp -fr ../commits/commit3/* .
svn add *
svn commit -m "initial commit r3" --username "red"
echo "red does commit r3"

# r4
cd ..
svn copy $REPO_URL/branches/branch_from_r2 $REPO_URL/branches/branch_from_r3 -m "Create branch_from_r3" --author "blue"
svn checkout $REPO_URL/branches/branch_from_r3 branch_from_r3
cd branch_from_r3

cp -fr ../commits/commit4/* .
svn add *
svn commit -m "initial commit r4" --username "blue"
echo "blue does commit r4"

# r5 
cd ..
svn checkout $REPO_URL/trunk trunk
cd trunk

cp -fr ../commits/commit5/* .
svn add *
svn commit -m "initial commit r5" --username "red"
echo "red does commit r5"

# r6
cp -fr ../commits/commit6/* .
svn add *
svn commit -m "initial commit r6" --username "red"
echo "red does commit r6"

# r7
cd ..
svn copy $REPO_URL/trunk $REPO_URL/branches/branch_from_r6 -m "Create branch_from_r6" --author "blue"
svn checkout $REPO_URL/branches/branch_from_r6 branch_from_r6
cd branch_from_r6

cp -fr ../commits/commit7/* .
svn add *
svn commit -m "initial commit r7" --username "blue"
echo "blue does commit r7"

# r8
cd ..
cd branch_from_r3

cp -fr ../commits/commit8/* .
svn add *
svn commit -m "initial commit r8" --username "blue"
echo "blue does commit r8"

# r9
cd ..
svn copy $REPO_URL/branches/branch_from_r3 $REPO_URL/branches/branch_from_r8 -m "Create branch_from_r8" --author "red"
svn checkout $REPO_URL/branches/branch_from_r8 branch_from_r8
cd branch_from_r8

cp -fr ../commits/commit9/* .
svn add *
svn commit -m "initial commit r9" --username "red"
echo "red does commit r9"

# r10
cp -fr ../commits/commit10/* .
svn add *
svn commit -m "initial commit r10" --username "red"
echo "red does commit r10"

# r11 
cd ..
svn copy $REPO_URL/branches/branch_from_r8 $REPO_URL/branches/branch_from_r10 -m "Create branch_from_r10" --author "blue"
svn checkout $REPO_URL/branches/branch_from_r10 branch_from_r10
cd branch_from_r10

cp -fr ../commits/commit11/* .
svn add *
svn commit -m "initial commit r11" --username "blue"
echo "blue does commit r11"

# r12 
cd ..
cd branch_from_r8

cp -fr ../commits/commit12/* .
svn add *
svn commit -m "initial commit r12" --username "red"
echo "red does commit r12"

# r13
cd ..
cd branch_from_r10

cp -fr ../commits/commit13/* .
svn add *
svn commit -m "initial commit r13" --username "blue"
echo "blue does commit r13"

# r14 - слияние branch_from_r10 в branch_from_r6
cd ..
cd branch_from_r6

svn merge $REPO_URL/branches/branch_from_r10
svn commit -m "merge branch_from_r10 to master" --username "blue"
svn delete $REPO_URL/branches/branch_from_r10 -m "Delete merged branch" --username "blue"

cp -fr ../commits/commit14/* .
svn add *
svn commit -m "initial commit r14" --username "blue"
echo "blue does commit r14"

# r15 - слияние branch_from_r6 в branch_from_r2
cd ..
cd branch_from_r2

svn merge $REPO_URL/branches/branch_from_r6
svn commit -m "merge branch_from_r6 to master" --username "red"
svn delete $REPO_URL/branches/branch_from_r6 -m "Delete merged branch" --username "red"

cp -fr ../commits/commit15/* .
svn add *
svn commit -m "initial commit r15" --username "red"
echo "red does commit r15"

# r16 - продолжение в branch_from_r3
cd ..
cd branch_from_r3

cp -fr ../commits/commit16/* .
svn add *
svn commit -m "initial commit r16" --username "blue"
echo "blue does commit r16"

# r17 - слияние branch_from_r3 в branch_from_r2
cd ..
cd branch_from_r2

svn merge $REPO_URL/branches/branch_from_r3
svn commit -m "merge branch_from_r3 to master" --username "red"
svn delete $REPO_URL/branches/branch_from_r3 -m "Delete merged branch" --username "red"

cp -fr ../commits/commit17/* .
svn add *
svn commit -m "initial commit r17" --username "red"
echo "red does commit r17"

# r18 - продолжение в branch_from_r8
cd ..
cd branch_from_r8

cp -fr ../commits/commit18/* .
svn add *
svn commit -m "initial commit r18" --username "red"
echo "red does commit r18"

# r19 - слияние branch_from_r8 в trunk
cd ..
cd trunk

svn merge $REPO_URL/branches/branch_from_r8
svn commit -m "merge branch_from_r8 to master" --username "red"
svn delete $REPO_URL/branches/branch_from_r8 -m "Delete merged branch" --username "red"

cp -fr ../commits/commit19/* .
svn add *
svn commit -m "initial commit r19" --username "red"
echo "red does commit r19"

# r20 - продолжение в branch_from_r2
cd ..
cd branch_from_r2

cp -fr ../commits/commit20/* .
svn add *
svn commit -m "initial commit r20" --username "red"
echo "red does commit r20"

# r21 - слияние branch_from_r2 в trunk
cd ..
cd trunk

svn merge $REPO_URL/branches/branch_from_r2
svn commit -m "merge branch_from_r2 to master" --username "red"
svn delete $REPO_URL/branches/branch_from_r2 -m "Delete merged branch" --username "red"

cp -fr ../commits/commit21/* .
svn add *
svn commit -m "initial commit r21" --username "red"
echo "red does commit r21"