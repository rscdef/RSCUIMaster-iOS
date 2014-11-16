#!/bin/sh


help() {
	echo "\nUSAGE: runScript.sh SRCROOT\nEXAMPLE: build iphone resources: runScript.sh my_proj_dir\n";
	exit 1;
}

showTagWarnnings() {
	KEYWORDS="TODO:|FIXME:|\?\?\?:|\!\!\!:"
	find "${SRCROOT}" \( -name "*.h" -or -name "*.m" \) -print0 | xargs -0 egrep --with-filename --line-number --only-matching "($KEYWORDS).*\$" | perl -p -e "s/($KEYWORDS)/ warning: \$1/"
}

buildLocalizableStrings() {
	SRC_LANG_FILE="${SRCROOT}/Resources/Strings/Base.lproj/Localizable.strings"
	GEN_SRC_FILE="RSCLocalizedStrings"

	if [[ ! -f $SRC_LANG_FILE ]]; then
		echo "error: file not found:"$SRC_LANG_FILE
		return;
	fi

	if [[ ! -d $GEN_DIR ]]; then
		mkdir -p $GEN_DIR
	fi

	if [ $SRC_LANG_FILE -nt $GEN_DIR/$GEN_SRC_FILE.h -o ! -f $GEN_DIR/$GEN_SRC_FILE.h ]; then
		$SCRIPT_DIR/trimComment.sh $SRC_LANG_FILE | python $SCRIPT_DIR/localization.py $GEN_DIR/$GEN_SRC_FILE
	fi
}

buildImageMacros() {
	if [[ ! -d $GEN_DIR ]]; then
		mkdir -p $GEN_DIR
	fi

	IMAGE_DIR="${SRCROOT}/Resources/Images/"
	GEN_FILE="${GEN_DIR}/RSCImageResources"
	TMP_FILE="${GEN_DIR}/tmp_RSCImageResources"
	$SCRIPT_DIR/genImageMacros.py $IMAGE_DIR $TMP_FILE

	if [[ -f $GEN_FILE ]]; then
		diffCon=`diff ${GEN_FILE}.h ${TMP_FILE}.h`
		if [[ "$diffCon" != "" ]]; then
			#echo "file updated!"
			rm -f "${GEN_FILE}.h"
			mv -f "${TMP_FILE}.h" "${GEN_FILE}.h"
		else
			#echo "no change"
			rm -f "${TMP_FILE}.h"
		fi
	else
		mv -f "${TMP_FILE}.h" "${GEN_FILE}.h"
	fi
}


#############################################################
if [[ $# -lt 1 ]]; then
	help;
fi

SRCROOT=$1;
#TARGET_NAME=$2; #`echo $2 | tr '[A-Z]' '[a-z]'`

TARGET_PATH="${SRCROOT}"
GEN_DIR="${SRCROOT}/AutoGen"
SCRIPT_DIR="${SRCROOT}/Script"

showTagWarnnings;
buildLocalizableStrings;
buildImageMacros;
