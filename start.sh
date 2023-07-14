if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/shiv-dwivedi/KD.git /KD
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /KD
fi
cd /KD-URL
pip3 install -U -r requirements.txt
echo "Starting Lucifer...."
python3 bot.py
