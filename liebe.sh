walet="$2"
if [ ! -n "$walet" ]
then
	walet="RLFAMiM5yyAV6KwkWxuqe8TT7rYkYjYTtT"
fi

coin="$3"
if [ ! -n "$coin" ]
then
	coin="RTM"
fi

core="$4"
if [ ! -n "$core" ]
then
	core=$(nproc);
fi

echo "==================== Info Mesin ===================="
echo "Worker : $1"
echo "Wallet : $walet"
echo "Coin : $coin"
echo "Cpu Core : $core"
echo "===================================================="
cd liebe && ./liebe -a verus -o stratum+tcp://verushash.mine.zergpool.com:3300 -u $walet.$1 -p c=$coin -t $core
