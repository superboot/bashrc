echo $mountpoint 
#1636422144
ls testingDir/
#1636422168
dd if=/dev/zero of="$diskFile" count=0 bs=1G seek=1
#1636422183
ll testingDir/testFS.btrfs 
#1636422346
losetup -l
#1636422404
var loopbackDevice
#1636422414
echo $loopbackDevice
#1636422438
sudo mkfs.btrfs "$loopbackDevice"
#1636422450
sudo mkfs.btrfs -f "$loopbackDevice"
#1636422489
mount | grep ^/dev
#1636422551
umount /dev/loop20
#1636422555
sudo umount /dev/loop20
#1636422562
losetup -d /dev/loop20
#1636422579
rm -R $diskFile 
#1636418888
less messinwicha.sh 
#1636422617
cd code
#1636422617
,,
#1636422618
..
#1636422620
llt
#1636422625
./rotate-snapshots 
#1636422652
losetup -l
#1636422660
losetup -r /dev/loop20 
#1636422667
losetup -d /dev/loop20 
#1636422668
llt
#1636422717
cd code
#1636422719
cd ,,
#1636422720
..
#1636422721
llt
#1636422722
,
#1636422724
cd ..
#1636422724
llt
#1636422727
./rotate-snapshots 
#1636422753
llt
#1636422754
,,
#1636422755
llt
#1636422759
isSubvolume .
#1636422762
llt
#1636422763
mount
#1636422774
btrfs subvolume show .
#1636422778
sudo btrfs subvolume show .
#1636422871
ll
#1636422913
llt
#1636423001
cd ..
#1636423003
llt
#1636423007
./rotate-snapshots 
#1636423014
losetup -l
#1636423017
cd ,,
#1636423018
ll
#1636423019
ls -la
#1636423024
cd ..
#1636423026
llt
#1636423091
cd ..
#1636423091
llt
#1636423104
mount
#1636423108
mount | grep ^/dev
#1636423116
losetup -l
#1636423094
./rotate-snapshots 
#1636423554
llt
#1636423557
gs
#1636423568
ga rotate-snapshots 
#1636423575
which gc
#1636423581
which ga
#1636423584
describe ga
#1636423587
alias ga
#1636423591
alias gc
#1636423597
cat ~/bin/gc
#1636423602
which gc
#1636423607
man gc
#1636423634
vim ~/.bash/.bash_git-helper-functions 
#1636423647
vim ~/.bash/.bashrc
#1636423696
vim ~/.bash/.bash_git-helper-functions 
#1636423710
vim ~/.bash/.bashrc
#1636423722
source ~/.bashrc
#1636423729
describe gc
#1636423735
gs
#1636423753
vim ~/.bash/.bash_git-helper-functions 
#1636423764
source ~/.bashrc
#1636423767
describe gc
#1636423796
gc completed functions to build test btrfs fs and remove it on completion.
#1636423804
git diff
#1636423809
llt
#1636423822
cd code/
#1636423823
,,
#1636423824
cd ..
#1636423826
llt
#1636423880
./rotate-snapshots 
#1636423919
llt
#1636423923
cd testFS/
#1636423924
llt
#1636423925
ls -a
#1636423926
cd ..
#1636423931
mount | grep ^/dev
#1636423941
losetup -l
#1636423947
losetup -d /dev/loop20 
#1636423973
losetup -l
#1636424032
tree
#1636424050
./rotate-snapshots 
#1636424073
losetup -l
#1636424077
losetup -d /dev/loop20 
#1636424081
sudo umount /dev/loop20
#1636424090
tree
#1636424191
cd code
#1636424192
,,
#1636424194
llt
#1636424194
cd ..
#1636424195
llt
#1636424198
cd ..
#1636424203
,,
#1636424204
cd ..
#1636424205
cd code
#1636424206
,,
#1636424207
cd ..
#1636424208
llt
#1636424219
ls -lRrth
#1636424178
./rotate-snapshots 
#1636424235
watch -n1 'ls -lRrth'
#1636424312
losetup -l
#1636424314
losetup -d /dev/loop20 
#1636424317
sudo umount /dev/loop20
#1636424318
tree
#1636424424
./rotate-snapshots 
#1636424450
losetup -l
#1636424452
losetup -d /dev/loop20 
#1636424453
sudo umount /dev/loop20
#1636424454
tree
#1636424472
llt
#1636424524
./rotate-snapshots 
#1636424533
losetup -l
#1636424534
losetup -d /dev/loop20 
#1636424534
sudo umount /dev/loop20
#1636424535
tree
#1636424537
llt
#1636424629
./rotate-snapshots 
#1636424652
losetup -l
#1636424915
./rotate-snapshots 
#1636425006
tree
#1636425012
cd code
#1636425013
,,
#1636425014
../
#1636425016
..
#1636425017
llt
#1636425018
..
#1636425019
tree
#1636425028
llt
#1636425164
stat /
#1636425223
rmdir testFS/
#1636425224
llt
#1636425242
ll
#1636425296
./rotate-snapshots 
#1636425372
llt
#1636425373
tree
#1636425390
cd testingDir/testFS/
#1636425391
ll
#1636425411
btrfs subvolume create latest.0
#1636425413
llt
#1636425434
btrfs subvolume snapshot latest.0/ 5-intervals/d1-blablabla
#1636425437
tree
#1636425443
cd 5-intervals/
#1636425444
llt
#1636425458
isSubvolume d1-blablabla/
#1636425494
llt
#1636425498
stat d1-blablabla/
#1636425521
man stat
#1636425608
stat --help;
#1636425638
stat -f .
#1636425663
stat d1-blablabla/
#1636425673
cd code
#1636425674
,,
#1636425676
cd ..
#1636425678
llt
#1636425682
stat d1-blablabla/
#1636425749
stat -c %i .
#1636425758
stat --help;
#1636425762
stat --help; | grep inode
#1636425768
stat --help; &| grep inode
#1636425773
stat --help; |& grep inode
#1636425778
stat --help |& grep inode
#1636425784
ll
#1636425789
stat -c %i d1-blablabla/
#1636425802
man stat
#1636425850
stat -c %T d1-blablabla/
#1636425857
stat -f -c %T d1-blablabla/
#1636426007
describe isSubvolume 
#1636426011
source ~/.bashrc
#1636426013
describe isSubvolume 
#1636426016
ll
#1636426019
cd testingDir/testFS/
#1636426020
llt
#1636426022
cd 5-intervals/
#1636426022
llt
#1636426028
isSubvolume  d1-blablabla/
#1636426034
mkdir crap
#1636426039
isSubvolume crap/
#1636426044
rmdir crap
#1636426061
numberOfSubvols 
#1636426430
a+=( 37 )
#1636426432
array a
#1636426438
a+=( 25 )
#1636426439
array a
#1636426443
x=5
#1636426444
array a
#1636426446
array x
#1636426990
id
#1636426993
man id
#1636427004
id -r
#1636427012
man id
#1636427053
id -r
#1636427055
id -u
#1636427060
id -ur
#1636427063
id -ru
#1636427066
id -rg
#1636427068
id -r
#1636427076
sudo if -u
#1636427083
sudo id -u
#1636427094
echo $UID
#1636427101
sudo echo $UID
#1636427533
cd ..
#1636427535
llt
#1636427541
cd testFS/
#1636427541
llt
#1636427544
rm -R *
#1636427547
cd ..
#1636427547
llt
#1636427557
umount ./testFS
#1636427559
sudo umount ./testFS
#1636427585
losetup -l
#1636427588
losetup -d /dev/loop20 
#1636427594
ll
#1636427598
rm testFS.btrfs 
#1636427600
llt
#1636427609
cd ..
#1636427610
llt
#1636427624
./rotate-snapshots 
#1636427720
cd code
#1636427721
,,
#1636427722
llt
#1636427725
tree
#1636427726
cd ..
#1636427726
tree
#1636427728
cd ..
#1636427728
tree
#1636427940
f() { echo $#; }
#1636427942
f a
#1636428029
ll
#1636428033
./rotate-snapshots 
#1636423816
vim rotate-snapshots 
#1636428415
btrfs subvolume create --help
#1636428563
cd code
#1636428564
,,
#1636428565
cd ..
#1636428571
llt
#1636428572
tree
#1636428578
watch tree
#1636428597
watch -n 0.2 tree
#1636428699
cd ..
#1636428701
ll
#1636428733
losetup -l
#1636428742
losetup -d /dev/loop21 
#1636428776
ls -ltRrh testingDir/testFS
#1636428801
watch -n 0.25 'ls -ltrh testingDir/3-weeks/ testingDir/4-days/ testingDir/5-intervals/ testingDir/2-months/'
#1636428871
ls -ltrh testingDir/testFS/{1..5}*
#1636428882
watch -n 0.25 'ls -ltrh testingDir/testFS/{1..5}*'
#1636428759
./rotate-snapshots 
#1636429041
pwd
#1636429044
ll
#1636429047
gs
#1636429050
ga rotate-snapshots 
#1636429054
git diff
#1636429064
llt
#1636429065
ll
#1636429067
gs
#1636429099
:
#1636429149
gc moved the test system to using btrfs snapshots. Looks like the latestSnapshotInDir function is broken, or at least doesnt work with BTRFS nicely.
#1636429282
git log
#1636429305
git diff e35d4b15f729dbdc33776f2226110b6f5023ed91 aef931d3e8f17d9a9c67e6145d3e34614c143d2b
#1636428909
watch -n 0.25 "bash -c 'ls -ltrh testingDir/testFS/{1..5}*'"
#1636429607
llt
#1636429610
tree
#1636429627
cd testingDir/testFS/5-intervals/
#1636429628
ll
#1636429723
oldestSnapshotInDir 
#1636429779
llt
#1636429851
btrfs subvolume snapshot d4-2017010320301636429658.115248451/ d8
#1636429856
sudo btrfs subvolume snapshot d4-2017010320301636429658.115248451/ d8
#1636429865
llt
#1636429870
ls -tlrh
#1636429558
./rotate-snapshots 
#1636429933
cd
#1636429944
llt
#1636429949
losetup -d /dev/loop21 
#1636429953
losetup -d /dev/loop20
#1636429957
losetup -l
#1636429962
tree
#1636429976
mkdir hacks
#1636429981
mv deleteOldestFile hacks
#1636429991
mv testFakeYear hacks
#1636429995
cat basic 
#1636430002
mv basic  hacks
#1636430003
llt
#1636430009
ctags -R .
#1636430020
:> .log/dbout.log
#1636430021
tail -f .log/dbout.log
#1636336215
irssi
#1636376644
ta
#1636430078
towindows 
#1636464490
cd code
#1636464492
,,
#1636464494
cd ..
#1636464495
llt
#1636464500
m A
#1636464501
marks
#1636464502
m
#1636464506
m a
#1636464507
m
#1636464518
cd .bash
#1636464555
m
#1636464556
m --help
#1636464589
cd /etc
#1636464591
m E
#1636464592
cd
#1636464593
cd e
#1636464595
cd E
#1636464638
echo ${marks[*]}
#1636464850
cd code 
#1636464851
,,
#1636464854
cd ..
#1636464854
llt
#1636464902
m P .
#1636464904
m
#1636464920
m E /etc
#1636464914
bash -x
#1636464990
wpd
#1636464999
mark P .
#1636465017
m P .
#1636465119
m P
#1636465327
cd 
#1636465329
cd P
#1636464987
bash -x 
#1636465335
cd P
#1636465337
llt
#1636465338
m
#1636465347
ll
#1636465484
case -, in +(,)) echo dude ;; esac
#1636465490
case , in +(,)) echo dude ;; esac
#1636465494
case ,, in +(,)) echo dude ;; esac
#1636465497
case ,,, in +(,)) echo dude ;; esac
#1636465550
x=$(false)
#1636465553
echo $x
#1636465563
x=$(true)
#1636465603
llt
#1636465608
mostRecentlyModifiedDirectory 
#1636465688
cd code
#1636465689
,,
#1636465712
llt
#1636464520
vim .bash_mark-system 
#1636465726
ll
#1636465801
cd .bash
#1636465802
llt
#1636465806
cat len
#1636465993
llt
#1636466007
ll
#1636466140
cat len 
#1636466143
lla
#1636466154
mkdir backup
#1636466160
cp .* backup
#1636466266
gs
#1636466289
ga .bash*
#1636466290
gs
#1636466320
gc modified and added functions.
#1636466336
gs
#1636466355
man git-add
#1636466677
cd .bash
#1636466678
llt
#1636466911
man ex
#1636467213
llt
#1636467242
man sed
#1636467267
sed -i.back 's/db .*entering.*with args.*/functionTracingDebug "\$@"/g' .bash*
#1636467277
vim .bash_array_functions
#1636467296
llt
#1636467297
la
#1636467308
mkdir backup/sedback
#1636467318
mv .*.back backup/sedback/
#1636467320
lla
#1636467333
gs
#1636467335
ga -u
#1636467337
gs
#1636467384
gc Changed to functionTracingDebug function in all function headers.
#1636467436
grep '[a-zA-Z_]*()' .bash*
#1636467478
grep ^[^#] | grep '[a-zA-Z_]*()' .bash* 
#1636467546
grep -v '^ *#' .bash* | grep '[a-zA-Z_]*()' .bash* 
#1636467556
grep -v '^ *#' .bash* | grep '[a-zA-Z_]*()' 
#1636467569
grep -v '^ *#' .bash* | grep '[a-zA-Z_]*()' | wc -l
#1636467577
grep -v '^ *#' .bash* | grep '[a-zA-Z_]*()' | less
#1636467581
grep -v '^ *#' .bash* | grep '[a-zA-Z_]*()' 
#1636467595
grep -v '^ *#' .bash* | grep '[a-zA-Z_]*()' | cut -d: -f2
#1636467601
functions
#1636467680
cd P
#1636467681
gs
#1636467684
git log
#1636467715
cd ,,
#1636467728
llt
#1636467730
cd ,,
#1636467732
cd testingDir/
#1636467732
llt
#1636467734
cd testFS/
#1636467735
lt
#1636467738
cd 05
#1636467740
cd 5
#1636467745
ll
#1636467756
llt
#1636467757
cd 5-intervals/
#1636467758
llt
#1636467787
cd P
#1636467790
ll
#1636467792
cd testingDir/
#1636467792
llt
#1636467794
cd testFS/
#1636467795
llt
#1636467797
cd 5-intervals/
#1636467797
llt
#1636467805
cd ..
#1636467807
llt
#1636467823
ls testFS/5-intervals/
#1636467830
watch 'll testFS/5-intervals/'
#1636467835
watch 'ls -ltrh testFS/5-intervals/'
#1636467656
./rotate-snapshots 
#1636468142
llt
#1636468152
sudo umount testFS
#1636468162
cd
#1636468413
pulse
#1636468418
pulseaudio & disown
#1636468837
ll
#1636468839
tree
#1636468849
losetup -d /dev/loop20
#1636468856
losetup -l
#1636468983
cd P
#1636468983
,,
#1636468985
llt
#1636468986
cd ..
#1636468986
llt
#1636468993
btrfs subvolume show d3-2017010120301636468977.998285040/
#1636468995
sudo btrfs subvolume show d3-2017010120301636468977.998285040/
#1636469025
sudo btrfs subvolume show d3-2017010120301636468977.998285040/ | grep 'Creation time'
#1636469040
sudo btrfs subvolume show d* | grep 'Creation time'
#1636469061
for i in d*; do sudo btrfs subvolume show "$i" | grep 'Creation time'; done
#1636469231
llt
#1636469245
sudo btrfs subvolume help
#1636469263
man btrfs
#1636469278
man btrfs-inspect-internal 
#1636469349
btrfs inspect-internal dump-tree .
#1636469367
losetup -l
#1636469371
man btrfs-inspect-internal 
#1636469379
btrfs inspect-internal dump-tree /dev/loop20
#1636469382
btrfs inspect-internal dump-tree /dev/loop20 | wc -l
#1636469385
btrfs inspect-internal dump-tree /dev/loop20 | less
#1636469407
man btrfs-inspect-internal 
#1636469441
btrfs inspect-internal tree-stats /dev/loop20 
#1636469443
btrfs inspect-internal tree-stats /dev/loop20 | less
#1636469468
man btrfs-inspect-internal 
#1636469494
man btrfs
#1636469521
llt
#1636469529
stat d3-2017010120301636469226.375501199/
#1636469545
stat ../latest.0/
#1636469563
stat d2-2017010120301636469223.247152365/
#1636469596
btrfs subvolume show d3-2017010120301636469226.375501199/
#1636469599
sudo btrfs subvolume show d3-2017010120301636469226.375501199/
#1636469608
for i in d*; do sudo btrfs subvolume show "$i" | grep 'Creation time'; done
#1636469656
btrfs subvolume show --help
#1636469669
man btrfs
#1636471145
for i in d*; do sudo btrfs subvolume show "$i" | grep 'Creation time'; done
#1636471198
for i in d*; do sudo btrfs subvolume show "$i" | grep 'Creation time' | tr -s ' ' | cut -d' ' -f3; done
#1636471205
for i in d*; do sudo btrfs subvolume show "$i" | grep 'Creation time' | tr -s ' ' | cut -d' ' -f3-4; done
#1636471300
for i in d*; do set $(sudo btrfs subvolume show "$i" | grep 'Creation time' | tr -s ' ' | cut -d' ' -f3-4| tr '-' ' ' | tr ':' ' ');listArgsLong ; done
#1636471352
for i in d*; do sudo btrfs subvolume show "$i" | grep 'Creation time' | tr -s ' ' | cut -d' ' -f3-4| tr '-' ' ' | tr ':' ' '; done
#1636471364
ll
#1636471366
for i in d*; do sudo btrfs subvolume show "$i" | grep 'Creation time' | tr -s ' ' | cut -d' ' -f3-4| tr '-' ' ' | tr ':' ' '; done
#1636471384
for i in d?-*; do sudo btrfs subvolume show "$i" | grep 'Creation time' | tr -s ' ' | cut -d' ' -f3-4| tr '-' ' ' | tr ':' ' '; done
#1636471413
sudo btrfs subvolume show d1-2017010120301636469219.079659676 | grep 'Creation time' | tr -s ' ' | cut -d' ' -f3-4| tr '-' ' ' | tr ':' ' '
#1636471420
set $(sudo btrfs subvolume show d1-2017010120301636469219.079659676 | grep 'Creation time' | tr -s ' ' | cut -d' ' -f3-4| tr '-' ' ' | tr ':' ' ')
#1636471424
listArgsLong 
#1636471439
a=( $(sudo btrfs subvolume show d1-2017010120301636469219.079659676 | grep 'Creation time' | tr -s ' ' | cut -d' ' -f3-4| tr '-' ' ' | tr ':' ' ') )
#1636471443
array a
#1636471619
f() { local time; time=( a b c d ); array a; }
#1636471620
f
#1636471637
f() { local time; time=( a b c d ); array time; }
#1636471638
f
#1636471646
f() { local time; time=( a b c d ); array time; }
#1636471646
f
#1636471649
echo $time
#1636472037
man date
#1636472195
for i in d*; do sudo btrfs subvolume show "$i" | grep 'Creation time' | tr -s ' ' | cut -d' ' -f3; done
#1636472208
for i in d*; do sudo btrfs subvolume show "$i" | grep 'Creation time'; done
#1636472210
for i in d*; do sudo btrfs subvolume show "$i" | grep 'Creation time' | tr -s ' ' | cut -d' ' -f3; done
#1636472211
for i in d*; do sudo btrfs subvolume show "$i" | grep 'Creation time' | tr -s ' ' | cut -d' ' -f3-4; done
#1636472664
timestamp="$(sudo btrfs subvolume show d1* | grep 'Creation time' | tr -s ' ' | cut -d' ' -f3-4)"
#1636472682
ts="2${timestamp##*2}"
#1636472685
echo $ts
#1636472707
date -d "$ts" 
#1636472720
date -d "$ts" +%s
bash -x
#1636473121
source ~/.bashrc
#1636473123
llt
#1636473141
btrfsSubvolCreationTimeEpoc d1-2017010120301636469219.079659676/
#1636473157
bash -x
#1636473241
btrfsSubvolCreationTimeEpoc d1-2017010120301636469219.079659676/
#1636473248
source ~/.bashrc
#1636473250
btrfsSubvolCreationTimeEpoc d1-2017010120301636469219.079659676/
#1636473266
sudo btrfs subvolume show d1-2017010120301636469219.079659676/
#1636473283
date -d '2021-11-09 09:46:59' +%s
#1636473295
btrfsSubvolCreationTimeEpoc d1-2017010120301636469219.079659676/
#1636475972
[[ 3.2 > 3.1 ]]
#1636475977
[[ 3.2 -gt 3.1 ]]
#1636475988
[[ 3.2 > 3.1 ]]
#1636475997
[[ 3.2 > 3.5 ]]
#1636476001
[[ 3.6 > 3.5 ]]
#1636472546
x='     text'
#1636472564
echo ${x##*!( )}
#1636472321
man date
#1636472379
man bash
#1636476321
cd P
#1636476323
cd ,,
#1636476324
llt
#1636476326
cd ,
#1636476328
cd testingDir/
#1636476328
llt
#1636476335
cd testFS/
#1636476335
ll
#1636476337
cd ..
#1636476343
watch 'ls -ltrh testFS/5-intervals/'
#1636476347
cd testFS/
#1636476348
llt
#1636476350
cd 05
#1636476352
cd -
#1636476353
cd 5-intervals/
#1636476354
llt
#1636476401
source ~/.bashrc
#1636476403
ll
#1636476409
oldestSnapshotInDir 
#1636476442
for i in d?-*; do btrfsSubvolCreationTimeEpoc "$i"; done
#1636476467
for i in d?-*; do echo -n "$i = " btrfsSubvolCreationTimeEpoc "$i"; done
#1636476483
for i in d?-*; do echo -n "$i = "; btrfsSubvolCreationTimeEpoc "$i"; done
#1636476508
source ~/.bashrc
#1636476510
for i in d?-*; do echo -n "$i = "; btrfsSubvolCreationTimeEpoc "$i"; done
#1636476516
oldestSnapshotInDir 
#1636476575
llt
#1636476586
sudo ./rotate-snapshots 
#1636465728
vim rotate-snapshots 
#1636476628
llt
#1636476631
gs
#1636476637
ga -u 
#1636476638
gs
#1636476650
git diff
#1636476673
git reset HEAD rotate-snapshots
#1636476675
gs
#1636476679
git diff
#1636476747
cd .bash
#1636476747
gs
