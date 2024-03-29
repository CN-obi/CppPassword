#!/system/bin/sh
CRC32=44
set -e
tab='	'
nl='
'
IFS=" $tab$nl"
umask=`umask`
umask 77
gztmpdir=
trap 'res=$?
  test -n "$gztmpdir" && rm -fr "$gztmpdir"
  (exit $res); exit $res
' 0 1 2 3 5 10 13 15
case $TMPDIR in
  / | /*/) ;;
  /*) TMPDIR=$TMPDIR/;;
  *) TMPDIR=/data/local/tmp/;;
esac
if type mktemp >/dev/null 2>&1; then
  gztmpdir=`mktemp -d "${TMPDIR}gztmpXXXXXXXXX"`
else
  gztmpdir=${TMPDIR}gztmp$$; mkdir $gztmpdir
fi || { (exit 256); exit 256; }
gztmp=$gztmpdir/$0
case $0 in
-* | */*'
') mkdir -p "$gztmp" && rm -r "$gztmp";;
*/*) gztmp=$gztmpdir/`basename "$0"`;;
esac || { (exit 256); exit 256; }
case `printf 'X\n' | tail -n +1 2>/dev/null` in
X) tail_n=-n;;
*) tail_n=;;
esac
if tail $tail_n +56 <"$0" | gzip -cd > "$gztmp"; then
  umask $umask
  chmod 777 "$gztmp"
  (sleep 5; rm -fr "$gztmpdir") 2>/dev/null &
  "$gztmp" ${1+"$@"}; res=$?
else
  printf >&2 '%s\n' "加密工具TG:CN_obi"
  (exit 256); res=256
fi; exit $res
��main加密@`R�rpRxR��	�R�R@N '�R�R9���R�R,�r�R�R�	�W��R� S '�
(S0S���M8/x�@S��x�	P/e�h]���/0��l���/��?�/ً�^@T�/Ў_���T/F��/n˾0�
/P_8{���/<_X/D_�f/6`/`k_�/���XFO�/?6&vU/�_@/��f/�|�x/��!#/d����ؙpW� V/,���.X/��_
�/��.���/��lÉY�/���/���^`l_p/��	^
�/7>O�/��^q'/X/_"����P/2�_�/錼��!�%g���ۅh�0Y/3���.h/�/��
u�/���Ů��/PZZ/n�M��(/xH/���/A5_h�pZ�`L/���_����/[�/��n��/�obg/v�/�� [/
��a�o(/��_HP��b/�YO[�lՋMp/�/U�]T��/�O{ �ؠ/����/�b�\�/�����/j��/����p�(\/����^�0/�_P/b쪱X_x/^l�%���/��?���b
/��/I`��6//c|����� ]_�&��]_(/�v�H�0_P�l��0V?]/�b7\���/_.v�ؘ/��/n�.6�/���^t��/�? ^/� x���^0/;��D,O/
��_h/8E_xbs�b/;�/��ڿ�^C'x��/��O�^�]��/�_�/����︸��9����BF^����ݐ(� _??슋/��8_Hb�b/��p/����_�/so�;.v�_�/|�v��
��/�_���`(/���``/v���߈_�/�8.A��eϼ�\H�/ �V�X./���K��/X �/
܌������Ʌ�/!����O/��{r f�/\�Ʌ$�Ʌ�X Ʌ�\`(���\�0�8N.d�@H2�B<PDrr!'Xd`r!'̸�!'r���ŋ�xT/	���^l/g g_'���h�go0g\��8/`�p&�X
g`g\���/D/�f_�g��_Я.X*��_�"z��/I� ho�x��_ /L(�b��/pX/��p��hh��h�0� 8�h�h����M�_�h��6�_ i�.v��(/P8/�'�Hi�hi_�	�pi�i?/��_�i
