.class public final Lcom/android/nfc/utils/LNfcPopupDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "LNfcPopupDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final ACTION_NFC_POPUP:Ljava/lang/String; = "com.lge.nfc.action.NFC_POPUP"

.field private static final DBG:Z

.field public static final EXTRA_NFC_POPUP_CHECKBOX:Ljava/lang/String; = "com.lge.nfc.extra.popup_checkbox"

.field public static final EXTRA_NFC_POPUP_INFORMATION:Ljava/lang/String; = "com.lge.nfc.extra.POPUP_INFORMATION"

.field public static final EXTRA_NFC_POPUP_INNERINTENT:Ljava/lang/String; = "com.lge.nfc.extra.popup_innerIntent"

.field private static final TAG:Ljava/lang/String; = "LNfcPopupDialog"


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mIsCheck:Z

.field private mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/utils/LNfcPopupDialog;->DBG:Z

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    .line 47
    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mCheckBox:Landroid/widget/CheckBox;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mIsCheck:Z

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/android/nfc/utils/LNfcPopupDialog;)Landroid/widget/CheckBox;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1()Z
    .registers 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/android/nfc/utils/LNfcPopupDialog;->DBG:Z

    return v0
.end method

.method static synthetic access$2(Lcom/android/nfc/utils/LNfcPopupDialog;Z)V
    .registers 2

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mIsCheck:Z

    return-void
.end method

.method private createNotifyDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZIZ)V
    .registers 16
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "message2"    # Ljava/lang/String;
    .param p4, "imageId"    # I
    .param p5, "checkboxEnable"    # Z
    .param p6, "checkboxchecked"    # Z
    .param p7, "positiveButtonToken"    # I
    .param p8, "isTitleIcon"    # Z

    .prologue
    .line 213
    iget-object v6, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 214
    .local v6, "p":Lcom/android/internal/app/AlertController$AlertParams;
    if-eqz p8, :cond_8

    .line 215
    sget v0, Lcom/lge/R$drawable;->ic_dialog_alert_holo:I

    iput v0, v6, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 218
    :cond_8
    iput-object p1, v6, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 219
    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/utils/LNfcPopupDialog;->createView(Ljava/lang/String;Ljava/lang/String;IZZ)Landroid/view/View;

    move-result-object v0

    iput-object v0, v6, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 220
    invoke-virtual {p0, p7}, Lcom/android/nfc/utils/LNfcPopupDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 221
    iput-object p0, v6, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 222
    invoke-virtual {p0}, Lcom/android/nfc/utils/LNfcPopupDialog;->setupAlert()V

    .line 223
    return-void
.end method

.method private createSelectionDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZIIZ)V
    .registers 17
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "message2"    # Ljava/lang/String;
    .param p4, "imageId"    # I
    .param p5, "checkboxEnable"    # Z
    .param p6, "checkboxchecked"    # Z
    .param p7, "positiveButtonToken"    # I
    .param p8, "negativeButtonToken"    # I
    .param p9, "isTitleIcon"    # Z

    .prologue
    .line 198
    iget-object v6, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 199
    .local v6, "p":Lcom/android/internal/app/AlertController$AlertParams;
    if-eqz p9, :cond_8

    .line 200
    sget v0, Lcom/lge/R$drawable;->ic_dialog_alert_holo:I

    iput v0, v6, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 203
    :cond_8
    iput-object p1, v6, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 204
    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/utils/LNfcPopupDialog;->createView(Ljava/lang/String;Ljava/lang/String;IZZ)Landroid/view/View;

    move-result-object v0

    iput-object v0, v6, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 205
    invoke-virtual {p0, p7}, Lcom/android/nfc/utils/LNfcPopupDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 206
    iput-object p0, v6, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 207
    invoke-virtual {p0, p8}, Lcom/android/nfc/utils/LNfcPopupDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 208
    iput-object p0, v6, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 209
    invoke-virtual {p0}, Lcom/android/nfc/utils/LNfcPopupDialog;->setupAlert()V

    .line 210
    return-void
.end method

.method private createView(Ljava/lang/String;Ljava/lang/String;IZZ)Landroid/view/View;
    .registers 24
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "message2"    # Ljava/lang/String;
    .param p3, "imageId"    # I
    .param p4, "checkboxEnable"    # Z
    .param p5, "checkboxchecked"    # Z

    .prologue
    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/utils/LNfcPopupDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->orientation:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_29

    const/4 v5, 0x1

    .line 110
    .local v5, "isLandscape":Z
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/utils/LNfcPopupDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v12

    if-eqz v5, :cond_2b

    const v11, 0x7f030004

    :goto_17
    const/4 v13, 0x0

    invoke-virtual {v12, v11, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 111
    .local v10, "view":Landroid/view/View;
    if-eqz v10, :cond_20

    if-nez p1, :cond_2f

    .line 112
    :cond_20
    const-string v11, "LNfcPopupDialog"

    const-string v12, "view or message is null"

    invoke-static {v11, v12}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/4 v10, 0x0

    .line 170
    .end local v10    # "view":Landroid/view/View;
    :goto_28
    return-object v10

    .line 109
    .end local v5    # "isLandscape":Z
    :cond_29
    const/4 v5, 0x0

    goto :goto_e

    .line 110
    .restart local v5    # "isLandscape":Z
    :cond_2b
    const v11, 0x7f030003

    goto :goto_17

    .line 115
    .restart local v10    # "view":Landroid/view/View;
    :cond_2f
    const v11, 0x7f0a0005

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 116
    .local v7, "messageView":Landroid/widget/TextView;
    const v11, 0x7f0a0008

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 117
    .local v8, "messageView2":Landroid/widget/TextView;
    const v11, 0x7f0a000a

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/nfc/utils/LNfcPopupDialog;->mCheckBox:Landroid/widget/CheckBox;

    .line 118
    const v11, 0x7f0a0007

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 119
    .local v4, "imageView":Landroid/widget/ImageView;
    const v11, 0x7f0a0006

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 122
    .local v3, "imageLayout":Landroid/widget/LinearLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/utils/LNfcPopupDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v2, v11, Landroid/content/res/Configuration;->fontScale:F

    .line 123
    .local v2, "fontscale":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/nfc/utils/LNfcPopupDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v11}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 124
    .local v9, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v11, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-double v12, v11

    float-to-double v14, v2

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-int v11, v12

    iput v11, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 126
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7}, Lcom/android/nfc/utils/LNfcPopupDialog;->setMessageView(Ljava/lang/String;Landroid/widget/TextView;)V

    .line 127
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v8}, Lcom/android/nfc/utils/LNfcPopupDialog;->setMessageView(Ljava/lang/String;Landroid/widget/TextView;)V

    .line 129
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/nfc/utils/LNfcPopupDialog;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v11, :cond_9f

    .line 130
    sget-boolean v11, Lcom/android/nfc/utils/LNfcPopupDialog;->DBG:Z

    const-string v12, "LNfcPopupDialog"

    const-string v13, "mCheckBox is null"

    invoke-static {v11, v12, v13}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 131
    const/4 v10, 0x0

    goto :goto_28

    .line 134
    :cond_9f
    if-lez p3, :cond_100

    .line 135
    const-string v11, "LNfcPopupDialog"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "imageId : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 139
    if-eqz v5, :cond_fa

    .line 140
    const-wide v12, 0x3feb333333333333L    # 0.85

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v12, v13}, Lcom/android/nfc/utils/LNfcPopupDialog;->resizeBitmap(ID)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 150
    :goto_d1
    if-eqz p4, :cond_121

    .line 151
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/nfc/utils/LNfcPopupDialog;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 152
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/nfc/utils/LNfcPopupDialog;->mCheckBox:Landroid/widget/CheckBox;

    move/from16 v0, p5

    invoke-virtual {v11, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 153
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/nfc/utils/LNfcPopupDialog;->mIsCheck:Z

    .line 154
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/nfc/utils/LNfcPopupDialog;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v12, Lcom/android/nfc/utils/LNfcPopupDialog$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/nfc/utils/LNfcPopupDialog$1;-><init>(Lcom/android/nfc/utils/LNfcPopupDialog;)V

    invoke-virtual {v11, v12}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_28

    .line 142
    :cond_fa
    move/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d1

    .line 145
    :cond_100
    const-string v11, "LNfcPopupDialog"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "imageId : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const/16 v11, 0x8

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_d1

    .line 166
    :cond_121
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v6, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 167
    .local v6, "layout":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/nfc/utils/LNfcPopupDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v11, v6}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/nfc/utils/LNfcPopupDialog;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_28
.end method

.method private resizeBitmap(ID)Landroid/graphics/Bitmap;
    .registers 14
    .param p1, "resId"    # I
    .param p2, "resize"    # D

    .prologue
    const/4 v8, 0x0

    .line 185
    invoke-virtual {p0}, Lcom/android/nfc/utils/LNfcPopupDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 186
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-double v6, v5

    mul-double/2addr v6, p2

    double-to-int v3, v6

    .line 187
    .local v3, "height":I
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-double v6, v5

    mul-double/2addr v6, p2

    double-to-int v4, v6

    .line 188
    .local v4, "width":I
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v8, v8, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 190
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 191
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 192
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 194
    return-object v0
.end method

.method private setMessageView(Ljava/lang/String;Landroid/widget/TextView;)V
    .registers 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "messageView"    # Landroid/widget/TextView;

    .prologue
    .line 174
    if-eqz p2, :cond_16

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 175
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    :goto_15
    return-void

    .line 178
    :cond_16
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    sget-boolean v0, Lcom/android/nfc/utils/LNfcPopupDialog;->DBG:Z

    const-string v1, "LNfcPopupDialog"

    const-string v2, "message is null"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_15
.end method

.method private showDialog(Lcom/android/nfc/utils/LNfcPopupInformation;)V
    .registers 13
    .param p1, "infor"    # Lcom/android/nfc/utils/LNfcPopupInformation;

    .prologue
    .line 82
    invoke-virtual {p1}, Lcom/android/nfc/utils/LNfcPopupInformation;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/nfc/utils/LNfcPopupInformation;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "message":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/nfc/utils/LNfcPopupInformation;->getMessage2()Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "message2":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/nfc/utils/LNfcPopupInformation;->getImageId()I

    move-result v4

    .line 87
    .local v4, "imageId":I
    if-eqz v2, :cond_14

    if-nez v3, :cond_21

    .line 88
    :cond_14
    sget-boolean v0, Lcom/android/nfc/utils/LNfcPopupDialog;->DBG:Z

    const-string v5, "LNfcPopupDialog"

    const-string v6, "Error : title or message is null"

    invoke-static {v0, v5, v6}, Lcom/android/nfc/utils/LNfcLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/nfc/utils/LNfcPopupDialog;->finish()V

    .line 106
    :goto_20
    return-void

    .line 93
    :cond_21
    invoke-virtual {p0}, Lcom/android/nfc/utils/LNfcPopupDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    .line 94
    .local v10, "window":Landroid/view/Window;
    const/high16 v0, 0x200000

    invoke-virtual {v10, v0}, Landroid/view/Window;->addFlags(I)V

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mIsCheck:Z

    .line 97
    invoke-virtual {p1}, Lcom/android/nfc/utils/LNfcPopupInformation;->getSelectPopup()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 98
    sget-boolean v0, Lcom/android/nfc/utils/LNfcPopupDialog;->DBG:Z

    const-string v5, "LNfcPopupDialog"

    const-string v6, "NFC_OPTION_SELECTION"

    invoke-static {v0, v5, v6}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 99
    iput-object p1, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    .line 100
    invoke-virtual {p1}, Lcom/android/nfc/utils/LNfcPopupInformation;->getDefaultCheckbox()Z

    move-result v5

    invoke-virtual {p1}, Lcom/android/nfc/utils/LNfcPopupInformation;->getDefaultCheckboxEnable()Z

    move-result v6

    invoke-virtual {p1}, Lcom/android/nfc/utils/LNfcPopupInformation;->getPositiveButtonToken()I

    move-result v7

    invoke-virtual {p1}, Lcom/android/nfc/utils/LNfcPopupInformation;->getNegativeButtonToken()I

    move-result v8

    invoke-virtual {p1}, Lcom/android/nfc/utils/LNfcPopupInformation;->isTitleIconEnable()Z

    move-result v9

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/nfc/utils/LNfcPopupDialog;->createSelectionDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZIIZ)V

    goto :goto_20

    .line 102
    :cond_57
    sget-boolean v0, Lcom/android/nfc/utils/LNfcPopupDialog;->DBG:Z

    const-string v5, "LNfcPopupDialog"

    const-string v6, "NFC_OPTION_SELECTION is false"

    invoke-static {v0, v5, v6}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 103
    iput-object p1, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    .line 104
    invoke-virtual {p1}, Lcom/android/nfc/utils/LNfcPopupInformation;->getDefaultCheckbox()Z

    move-result v5

    invoke-virtual {p1}, Lcom/android/nfc/utils/LNfcPopupInformation;->getDefaultCheckboxEnable()Z

    move-result v6

    invoke-virtual {p1}, Lcom/android/nfc/utils/LNfcPopupInformation;->getPositiveButtonToken()I

    move-result v7

    invoke-virtual {p1}, Lcom/android/nfc/utils/LNfcPopupInformation;->isTitleIconEnable()Z

    move-result v8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/nfc/utils/LNfcPopupDialog;->createNotifyDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZIZ)V

    goto :goto_20
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x0

    .line 258
    packed-switch p2, :pswitch_data_c0

    .line 289
    sget-boolean v1, Lcom/android/nfc/utils/LNfcPopupDialog;->DBG:Z

    const-string v2, "LNfcPopupDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "OnClick : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 292
    :goto_1a
    return-void

    .line 260
    :pswitch_1b
    sget-boolean v1, Lcom/android/nfc/utils/LNfcPopupDialog;->DBG:Z

    const-string v2, "LNfcPopupDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onClick : NEGATIVE : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    if-eqz v1, :cond_5d

    iget-object v1, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    invoke-virtual {v1}, Lcom/android/nfc/utils/LNfcPopupInformation;->getNegativeButtonIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_5d

    .line 262
    iget-object v1, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    invoke-virtual {v1}, Lcom/android/nfc/utils/LNfcPopupInformation;->getNegativeButtonIntent()Landroid/content/Intent;

    move-result-object v0

    .line 263
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.lge.nfc.extra.popup_checkbox"

    iget-boolean v2, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mIsCheck:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 264
    iget-object v1, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    invoke-virtual {v1}, Lcom/android/nfc/utils/LNfcPopupInformation;->IsNegativeButtonIntentActivity()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 265
    iget-object v1, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    invoke-virtual {v1}, Lcom/android/nfc/utils/LNfcPopupInformation;->getNegativeButtonIntentUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/utils/LNfcPopupDialog;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 270
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5d
    :goto_5d
    iput-object v5, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    .line 271
    invoke-virtual {p0}, Lcom/android/nfc/utils/LNfcPopupDialog;->finish()V

    goto :goto_1a

    .line 267
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_63
    iget-object v1, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    invoke-virtual {v1}, Lcom/android/nfc/utils/LNfcPopupInformation;->getNegativeButtonIntentUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/utils/LNfcPopupDialog;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_5d

    .line 275
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_6d
    sget-boolean v1, Lcom/android/nfc/utils/LNfcPopupDialog;->DBG:Z

    const-string v2, "LNfcPopupDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onClick : POSITIVE : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v1, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    if-eqz v1, :cond_af

    iget-object v1, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    invoke-virtual {v1}, Lcom/android/nfc/utils/LNfcPopupInformation;->getPositiveButtonIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_af

    .line 277
    iget-object v1, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    invoke-virtual {v1}, Lcom/android/nfc/utils/LNfcPopupInformation;->getPositiveButtonIntent()Landroid/content/Intent;

    move-result-object v0

    .line 278
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "com.lge.nfc.extra.popup_checkbox"

    iget-boolean v2, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mIsCheck:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 279
    iget-object v1, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    invoke-virtual {v1}, Lcom/android/nfc/utils/LNfcPopupInformation;->IsPositiveButtonIntentActivity()Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 280
    iget-object v1, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    invoke-virtual {v1}, Lcom/android/nfc/utils/LNfcPopupInformation;->getPositiveButtonIntentUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/utils/LNfcPopupDialog;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 285
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_af
    :goto_af
    iput-object v5, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    .line 286
    invoke-virtual {p0}, Lcom/android/nfc/utils/LNfcPopupDialog;->finish()V

    goto/16 :goto_1a

    .line 282
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_b6
    iget-object v1, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    invoke-virtual {v1}, Lcom/android/nfc/utils/LNfcPopupInformation;->getPositiveButtonIntentUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/utils/LNfcPopupDialog;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_af

    .line 258
    :pswitch_data_c0
    .packed-switch -0x2
        :pswitch_1b
        :pswitch_6d
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/nfc/utils/LNfcPopupDialog;->finish()V

    .line 73
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/nfc/utils/LNfcPopupDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v0, "popupIntent":Landroid/content/Intent;
    const-string v1, "com.lge.nfc.action.NFC_POPUP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 76
    const-string v1, "com.lge.nfc.extra.POPUP_INFORMATION"

    iget-object v2, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v0}, Lcom/android/nfc/utils/LNfcPopupDialog;->startActivity(Landroid/content/Intent;)V

    .line 79
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    sget-boolean v1, Lcom/android/nfc/utils/LNfcPopupDialog;->DBG:Z

    const-string v2, "LNfcPopupDialog"

    const-string v3, "onCreate"

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/nfc/utils/LNfcPopupDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1e

    const-string v1, "com.lge.nfc.action.NFC_POPUP"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 58
    :cond_1e
    sget-boolean v1, Lcom/android/nfc/utils/LNfcPopupDialog;->DBG:Z

    const-string v2, "LNfcPopupDialog"

    const-string v3, "Error: this activity may be started only with intent com.lge.nfc.action.NFC_POPUP"

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/nfc/utils/LNfcPopupDialog;->finish()V

    .line 66
    :goto_2a
    return-void

    .line 64
    :cond_2b
    const-string v1, "com.lge.nfc.extra.POPUP_INFORMATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/utils/LNfcPopupInformation;

    iput-object v1, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    .line 65
    iget-object v1, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    invoke-direct {p0, v1}, Lcom/android/nfc/utils/LNfcPopupDialog;->showDialog(Lcom/android/nfc/utils/LNfcPopupInformation;)V

    goto :goto_2a
.end method

.method protected onDestroy()V
    .registers 7

    .prologue
    .line 227
    iget-object v4, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    if-nez v4, :cond_8

    .line 228
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 255
    :goto_7
    return-void

    .line 232
    :cond_8
    iget-object v4, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    invoke-virtual {v4}, Lcom/android/nfc/utils/LNfcPopupInformation;->getCancelButtonIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_1f

    const/4 v1, 0x1

    .line 233
    .local v1, "isCancelIntentUsed":Z
    :goto_11
    if-eqz v1, :cond_21

    .line 234
    iget-object v4, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    invoke-virtual {v4}, Lcom/android/nfc/utils/LNfcPopupInformation;->getCancelButtonIntent()Landroid/content/Intent;

    move-result-object v2

    .line 236
    .local v2, "sendIntent":Landroid/content/Intent;
    :goto_19
    if-nez v2, :cond_28

    .line 237
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    goto :goto_7

    .line 232
    .end local v1    # "isCancelIntentUsed":Z
    .end local v2    # "sendIntent":Landroid/content/Intent;
    :cond_1f
    const/4 v1, 0x0

    goto :goto_11

    .line 234
    .restart local v1    # "isCancelIntentUsed":Z
    :cond_21
    iget-object v4, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    invoke-virtual {v4}, Lcom/android/nfc/utils/LNfcPopupInformation;->getNegativeButtonIntent()Landroid/content/Intent;

    move-result-object v2

    goto :goto_19

    .line 241
    .restart local v2    # "sendIntent":Landroid/content/Intent;
    :cond_28
    if-eqz v1, :cond_4b

    .line 242
    iget-object v4, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    invoke-virtual {v4}, Lcom/android/nfc/utils/LNfcPopupInformation;->getCancelButtonIntentUser()Landroid/os/UserHandle;

    move-result-object v3

    .line 243
    .local v3, "userId":Landroid/os/UserHandle;
    :goto_30
    if-eqz v1, :cond_52

    .line 244
    iget-object v4, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    invoke-virtual {v4}, Lcom/android/nfc/utils/LNfcPopupInformation;->IsCancelButtonIntentActivity()Z

    move-result v0

    .line 245
    .local v0, "isActivity":Z
    :goto_38
    const-string v4, "com.lge.nfc.extra.popup_checkbox"

    iget-boolean v5, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mIsCheck:Z

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 247
    if-eqz v0, :cond_59

    .line 248
    invoke-virtual {p0, v2, v3}, Lcom/android/nfc/utils/LNfcPopupDialog;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 253
    :goto_44
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    .line 254
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    goto :goto_7

    .line 242
    .end local v0    # "isActivity":Z
    .end local v3    # "userId":Landroid/os/UserHandle;
    :cond_4b
    iget-object v4, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    invoke-virtual {v4}, Lcom/android/nfc/utils/LNfcPopupInformation;->getNegativeButtonIntentUser()Landroid/os/UserHandle;

    move-result-object v3

    goto :goto_30

    .line 244
    .restart local v3    # "userId":Landroid/os/UserHandle;
    :cond_52
    iget-object v4, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    invoke-virtual {v4}, Lcom/android/nfc/utils/LNfcPopupInformation;->IsNegativeButtonIntentActivity()Z

    move-result v0

    goto :goto_38

    .line 250
    .restart local v0    # "isActivity":Z
    :cond_59
    invoke-virtual {p0, v2, v3}, Lcom/android/nfc/utils/LNfcPopupDialog;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_44
.end method
