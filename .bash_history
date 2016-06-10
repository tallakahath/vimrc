casm import --help
casm import -p ../Mn-Fe_Ru2_Sn_NEW/training_data/SCEL4_1_1_4_0_0_0/2/calctype.default/run.final/POSCAR
casm import -p ../Mn-Fe_Ru2_Sn_NEW/training_data/SCEL4_1_1_4_0_0_0/2/POS
vim training_data/SCEL
ls
ls -lhat
vim training_data/SCEL1_1_1_1_0_0_0/LAT 
casm update
casm status -d
casm status -n
casm composition --calc
casm composition --select 0
casm status -n
casm status -d
casm select
casm udpate
casm status
ls
casm run ls --write-pos
casm run -e ls --write-pos
casm select --set-on
casm run -e ls --write-pos
vim training_data/SCEL1_1_1_1_0_0_0/0/POS 
casm import -p ../Mn-Fe_Ru2_Sn_NEW/training_data/SCEL4_1_1_4_0_0_0/2/calctype.default/run.final/POSCAR
vim ../Mn-Fe_Ru2_Sn_NEW/training_data/SCEL4_1_1_4_0_0_0/2/calctype.default/run.final/POSCAR
ls
vim ../Mn-Fe_Ru2_Sn_NEW/training_data/SCEL4_1_1_4_0_0_0/2/POS 
vim ../Mn-Fe_Ru2_Sn_NEW/training_data/SCEL4_1_1_4_0_0_0/2/calctype.default/run.final/POSCAR
vim training_data/SCEL
vim training_data/SCEL1_1_1_1_0_0_0/0/POS 
exit
cd Mn-Fe_Ru2_Sn_NOMAG/
ls
rm --min-energy 
rm '--min-energy' 
rm ./--min-energy 
ls
vim /home/liz/Mn-Fe_Ru2_Sn_NOMAG/./import/SCEL2_1_2_1_1_0_0/4/calctype.default/properties.calc.json
exit
cd Mn-Fe_Ru2_Sn_NOMAG/
ls
ls import/
casm import -p import/SCEL1_1_1_1_0_0_0/0/calctype.default/run.final/POSCAR -d
casm import -p import/SCEL1_1_1_1_0_0_0/0/calctype.default/run.final -d
ls
ls -lhta
rm -r training_data/SCEL1_1_1_1_0_0_0
rm .casm/config_list.json 
casm import -p import/SCEL1_1_1_1_0_0_0/0/calctype.default/run.final -d
ls
cd training_data/
ls
cd SCEL1_1_1_1_0_0_0/
ls
cd 0/
ls
cd calctype.default/
ls
vim properties.calc.json 
vim relaxed_structure.vasp 
cd ..
cd ..
cd ..
cd ..
casm update
casm status -d
casm select --set-on
casm update
casm status -d
for dir in training_data/SCEL*/[0-9]*/calctype.default/run.final ; do casm import -p $dir -d --min-energy ; done
for dir in training_data/SCEL*/[0-9]*/calctype.default/run.final ; do echo $dir ; done
find . -name run.final
find . -name run.final -exec casm import -p {} -d --min-energy
find . -name run.final -exec casm import -p {} -d --min-energy \;
import /home/liz/Mn-Fe_Ru2_Sn_NOMAG/./import/SCEL2_1_2_1_1_0_0/4/calctype.default/properties.calc.json --min-energy
import /home/liz/Mn-Fe_Ru2_Sn_NOMAG/./import/SCEL2_1_2_1_1_0_0/4/calctype.default/properties.calc.json --min-energy
import -- /home/liz/Mn-Fe_Ru2_Sn_NOMAG/./import/SCEL2_1_2_1_1_0_0/4/calctype.default/run.final --min-energy
import -p /home/liz/Mn-Fe_Ru2_Sn_NOMAG/./import/SCEL2_1_2_1_1_0_0/4/calctype.default/run.final -d --min-energy
casm import -p /home/liz/Mn-Fe_Ru2_Sn_NOMAG/./import/SCEL2_1_2_1_1_0_0/4/calctype.default/run.final -d --min-energy
find . -name properties.calctype.json
find . -name properties.calc.json
find . -name properties.calc.json -exec casm import --min-energy {} \;
find . -name properties.calc.json -exec casm import -p {} --min-energy \;
casm status -d
casm select --set-on
casm status -d
vim /home/liz/Mn-Fe_Ru2_Sn_NOMAG/./import/SCEL2_1_2_1_1_0_0/4/calctype.default/properties.calc.json
rm .casm/config_list.json 
find . -name properties.calc.json -exec casm import -p {} --min-energy \;
vim .casm/config_list.json 
rm .casm/config_list.json 
find . -name properties.calc.json -exec casm import -p {} -d --min-energy \;
find . -name properties.calc.json -exec casm import -p {} --min-energy \;
vim .casm/config_list.json 
casm select --set-on
casm status -d
casm update
casm status -d
casm query -k Fe Mn formation_energy relaxed_magmom relaxed_mag -o enthalpy.out
casm query -k Fe Mn formation_energy relaxed_magmom relaxed_mag -o enthalpy.out
casm query --help properties
casm composition -d
cp ../Mn-Fe_Ru2_Sn_NEW/.casm/query_alias.json .casm/
vim .casm/wu
vim .casm/query_alias.json 
vim .casm/query_alias.json 
cp ../Mn-Fe_Ru2_Sn_NEW/.casm/query_alias.json .casm/
vim .casm/query_alias.json 
casm query -k Fe Mn formation_energy relaxed_magmom relaxed_mag -o enthalpy.out
vim enthalpy.out 
casm status -d
vim .casm/config_list.json 
casm status -n
casm ref --set-auto
casm query -k Fe Mn formation_energy relaxed_magmom relaxed_mag -o enthalpy.out
vim enthalpy.out 
ls
ls
ls
vim training_data/settings/calctype.default/ref.default/chemical_reference.json 
casm ref --help
vim training_data/settings/calctype.default/ref.default/chemical_reference.json 
vim training_data/SCEL2_1_2_1_1_0_0/1/calctype.default/properties.calc.json 
vim training_data/settings/calctype.default/ref.default/chemical_reference.json 
vim enthalpy.out 
casm query -k Fe Mn formation_energy relaxed_magmom relaxed_mag -o enthalpy.out
vim enthalpy.out 
vim enthalpy.out 
vim training_data/SCEL2_2_1_1_0_1_1/1/calctype.default/properties.calc.json 
vim training_data/settings/calctype.default/ref.default/chemical_reference.json 
casm query -k Fe Mn formation_energy relaxed_magmom relaxed_mag -o enthalpy.out
vim enthalpy.out 
ipython
exit
cd ~/Bundle/CASMgui/
ls
cd configviewer/
vim dos.py
vim dos.py
exit
evince Downloads/ebay_postage_2.pdf 
exit
python
which ConfigViewer
ls -lhat /home/liz/.local/bin/ConfigViewer 
cd /home/liz/Bundle/CASMgui/
ls
cp ConfigViewer.py ConfigViewer_New.py 
vim ConfigViewer_New.py 
ls configviewer/
ls configviewer/__init__.py
cat configviewer/__init__.py
vim ConfigViewer_New.py 
cat configviewer/__init__.py
vim configviewer/__init__.py
cd Mn-Fe_Ru2_Sn_NEW/training_data/SCEL1_1_1_1_0_0_0/0/calctype.default/run.dos
python ~/Bundle/CASMgui/ConfigViewer_New.py 
python ~/Bundle/CASMgui/ConfigViewer_New.py vasprun.xml.gz 
python ~/Bundle/CASMgui/ConfigViewer_New.py vasprun.xml.gz 
python ~/Bundle/CASMgui/ConfigViewer_New.py vasprun.xml.gz 
ls
vim vasprun.xml.gz 
cd ~/Mn-Fe_Ru2_Sn_NEW/training_data/SCEL1_1_1_1_0_0_0/0/calctype.default/run.dos
python ~/Bundle/CASMgui/ConfigViewer_New.py vasprun.xml.gz 
ls
python ~/Bundle/CASMgui/ConfigViewer_New.py vasprun.xml
python ~/Bundle/CASMgui/ConfigViewer_New.py vasprun.xml
ConfigViewer vasprun.xml 
ConfigViewer vasprun.xml 
python ~/Bundle/CASMgui/ConfigViewer_New.py vasprun.xml
ipython -i ~/Bundle/CASMgui/ConfigViewer_New.py vasprun.xml
vim ~/Bundle/CASMgui/ConfigViewer_New.py
ipython -i ~/Bundle/CASMgui/ConfigViewer_New.py vasprun.xml
python ~/Bundle/CASMgui/ConfigViewer_New.py vasprun.xml
python ~/Bundle/CASMgui/ConfigViewer_New.py vasprun.xml
python ~/Bundle/CASMgui/ConfigViewer_New.py vasprun.xml
python ~/Bundle/CASMgui/ConfigViewer_New.py vasprun.xml
ipython --pylab
ssh braid
rsync -av --update --exclude WAVECAR* --exclude PROCAR braid:~/Mn-Fe_Ru2_Sn_NEW/ Mn-Fe_Ru2_Sn_NEW/
cd Mn-Fe_Ru2_Sn_N
cd Mn-Fe_Ru2_Sn_NEW/
casm query -k Fe Mn formation_energy relaxed_magmom relaxed_mag -o enthalpy.out
vim enthalpy.out 
vim hull.out 
vim T3 
vim T2 
casm super --structure training_data/SCEL4_1_1_4_0_0_0/7/calctype.default/run.final/POSCAR --transf_mat T3 --vasp5 | head
head training_data/SCEL4_1_1_4_0_0_0/7/calctype.default/run.final/POSCAR 
vim T3
vim T2 
casm super --structure training_data/SCEL4_1_1_4_0_0_0/7/calctype.default/run.final/POSCAR --transf_mat T2 --vasp5 | head
casm super --structure training_data/SCEL4_1_1_4_0_0_0/7/calctype.default/run.final/POSCAR --transf_mat T2 --vasp5 >> SCEL4_1_1_4_0_0_0-7.vasp
VESTA SCEL4_1_1_4_0_0_0-7.vasp 
ls
ssh braid
ls
ssh braid
cat hull.out 
cd training_data/SCEL1_1_1_1_0_0_0/0/calctype.default/run.final/
ConfigViewer vasprun.xml.gz 
cd ..
ls
cd run.dos/
ls
ConfigViewer vasprun.xml.gz 
ls
ConfigViewer vasprun.xml 
ConfigViewer vasprun.xml 
ConfigViewer vasprun.xml 
ConfigViewer vasprun.xml 
ConfigViewer vasprun.xml 
/usr/bin/screen -m /usr/bin/irssi
exit
startirssi
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
exit
sudo shutdown
cd ~/Papers/MCinv/
git status
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
exit
startirssi 
screen -dr IRC
screen -dr IRC
exit
screen -dr IRC
cd ~/Papers/MCinv/
git status
git diff MCinv.tex
git add MCinv.tex
git push
exit
ssh braid
ssh knot
ssh lattice
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
startirssi
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
ls
mv CHE_216A CHE216A
exit
ssh braid
ls
cd Mn-Fe_Ru2_Sn_MAG_RELAX/
ls
casm learn --help
ls
ssh guild
screen -dr IRC
cd .irssi/
ls
cd con
ls
cd scripts/
ls
vim slack_bridge.pl
cd autorun/
ln -s ../slack_bridge.pl .
exit
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
ssh braid
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
cd ~/.vim_runtime/
ls
cd ..
tar -zcvf .vim_runtime vim_runtime.tar.gz
tar -zcvf vim_runtime.tar.gz .vim_runtime/
ls
rm vim_runtime.tar.gz 
tar -cvf vim_runtime.tar .vim_runtime/
ls vim_runtime.tar 
tar -l vim_runtime.tar 
tar --list vim_runtime.tar 
rm -r vim_runtime.tar 
tar -zcvf vim_runtime.tar.gz .vim_runtime/
tar -xvf vim_runtime.tar.gz 
ls
cd .vim_runtime/
git status
cd ..
ls
tar -xvf vim_runtime.tar.gz vim_runtime
mkdir vim_runtime
mv vim_runtime.tar.gz vim_runtime
cd vim_runtime/
tar -xvf vim_runtime.tar.gz 
cd ..
rsync -azv .vim_runtime/ vim_runtime/.vim_runtime/
ls
mv vim_runtime/vim_runtime.tar.gz ..
ls
exit
ls
mv vim_runtime/vim_runtime.tar.gz .
ls
rm -r vim_runtime
rm -rf vim_runtime
ls
exit
cd CHE216A/
ls
cd set_1/
ls
vim set.tex 
exit
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
cd .vim_runtime/
git status
git add -a
git add -A
git status
git commit
git commit
git push
git status
cd ..
vim .vimrc
cd .xmonad/
ls
vim xmonad.hs
cd .xmonad/
vim xmonad.hs
cd ../.vim_runtime/
cp ../.xmonad/xmonad.hs .
cp ../.xmobarrc .
mkdir xmonad
mv xmonad.hs xmonad
mv .xmobarrc xmonad/
git add xmonad/
git status
git commit
git push
vim
vim --version
vim --version |head
vim --version |head
cd ..
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
screen -dr IRC
vim
screen -dr IRC
ssh braid
ssh braid
screen -dr IRC
screen -dr IRC
