.class Lcom/android/nfc/LNfcDispatcher;
.super Lcom/android/nfc/NfcDispatcher;
.source "LNfcDispatcher.java"


# static fields
.field private static final ACTION_NFC_CONFIRMPOPUP_POSITIVE_RESULT:Ljava/lang/String; = "com.lge.nfc.action.confirmpopup_positive_result"

.field private static final ACTION_NFC_EMPTYPOPUP_POSITIVE_RESULT:Ljava/lang/String; = "com.lge.nfc.action.emptypopup_positive_result"

.field private static final ACTION_NFC_GSMA_POPUP_POSITIVE_RESULT:Ljava/lang/String; = "com.lge.nfc.action.gsma_popup_positive_result"

.field private static final ACTION_NFC_VZW_POPUP_POSITIVE_RESULT:Ljava/lang/String; = "com.lge.nfc.action.vzw_popup_positive_result"

.field public static final BROWSER_SCHEME_MAP:[Ljava/lang/String;

.field public static final CONTACT_MIME_MAP:[Ljava/lang/String;

.field private static final EXTRA_SEND_INTENT:Ljava/lang/String; = "com.lge.nfc.intent.extra.send_intent"

.field public static final SMS_HEADER_MAP:[Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

.field private mLReceiver:Landroid/content/BroadcastReceiver;

.field mPopupPref:Lcom/android/nfc/utils/LNfcPopupPreference;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-array v0, v5, [Ljava/lang/String;

    .line 56
    const-string v1, "http://"

    aput-object v1, v0, v2

    .line 57
    const-string v1, "https://"

    aput-object v1, v0, v3

    .line 58
    const-string v1, "market"

    aput-object v1, v0, v4

    .line 55
    sput-object v0, Lcom/android/nfc/LNfcDispatcher;->BROWSER_SCHEME_MAP:[Ljava/lang/String;

    .line 60
    new-array v0, v5, [Ljava/lang/String;

    .line 61
    const-string v1, "text/vcard"

    aput-object v1, v0, v2

    .line 62
    const-string v1, "text/x-vcard"

    aput-object v1, v0, v3

    .line 63
    const-string v1, "text/x-vCard"

    aput-object v1, v0, v4

    .line 60
    sput-object v0, Lcom/android/nfc/LNfcDispatcher;->CONTACT_MIME_MAP:[Ljava/lang/String;

    .line 66
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 67
    const-string v1, "sms:"

    aput-object v1, v0, v2

    .line 68
    const-string v1, "smsto:"

    aput-object v1, v0, v3

    .line 69
    const-string v1, "mms:"

    aput-object v1, v0, v4

    .line 70
    const-string v1, "mmsto:"

    aput-object v1, v0, v5

    .line 66
    sput-object v0, Lcom/android/nfc/LNfcDispatcher;->SMS_HEADER_MAP:[Ljava/lang/String;

    .line 74
    const-string v0, "LNfcDispatcher"

    sput-object v0, Lcom/android/nfc/LNfcDispatcher;->TAG:Ljava/lang/String;

    .line 426
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/handover/LHandoverDataParser;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handoverDataParser"    # Lcom/android/nfc/handover/LHandoverDataParser;
    .param p3, "provisionOnly"    # Z

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/android/nfc/NfcDispatcher;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser;Z)V

    .line 75
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure;->getInstance()Lcom/lge/nfcconfig/NfcConfigure;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/LNfcDispatcher;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    .line 428
    new-instance v0, Lcom/android/nfc/LNfcDispatcher$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/LNfcDispatcher$1;-><init>(Lcom/android/nfc/LNfcDispatcher;)V

    iput-object v0, p0, Lcom/android/nfc/LNfcDispatcher;->mLReceiver:Landroid/content/BroadcastReceiver;

    .line 80
    invoke-static {p1}, Lcom/android/nfc/utils/LNfcPopupPreference;->getInstance(Landroid/content/Context;)Lcom/android/nfc/utils/LNfcPopupPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/LNfcDispatcher;->mPopupPref:Lcom/android/nfc/utils/LNfcPopupPreference;

    .line 81
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    .prologue
    .line 74
    sget-object v0, Lcom/android/nfc/LNfcDispatcher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/nfc/LNfcDispatcher;)Landroid/content/BroadcastReceiver;
    .registers 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/nfc/LNfcDispatcher;->mLReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/nfc/LNfcDispatcher;Landroid/content/Intent;II)V
    .registers 4

    .prologue
    .line 386
    invoke-direct {p0, p1, p2, p3}, Lcom/android/nfc/LNfcDispatcher;->makeConfirmPopupDialogIntent(Landroid/content/Intent;II)V

    return-void
.end method

.method private getBodyText(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "subString"    # Ljava/lang/String;

    .prologue
    .line 716
    const-string v0, ""

    .line 717
    .local v0, "bodyText":Ljava/lang/String;
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x26

    invoke-direct {v4, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 718
    .local v4, "paramsSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v4, p1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 720
    :cond_c
    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-nez v5, :cond_13

    .line 740
    :cond_12
    :goto_12
    return-object v0

    .line 721
    :cond_13
    new-instance v3, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x3d

    invoke-direct {v3, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 722
    .local v3, "nameValueSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 724
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 725
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 726
    .local v2, "name":Ljava/lang/String;
    const-string v5, "body"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 727
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v0

    .line 729
    :try_start_3d
    const-string v5, "UTF-8"

    invoke-static {v0, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_42
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3d .. :try_end_42} :catch_44

    move-result-object v0

    goto :goto_12

    .line 730
    :catch_44
    move-exception v1

    .line 731
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getBodyText : UnsupportedEncodingException "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;)V

    .line 732
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 733
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 736
    goto :goto_12
.end method

.method private makeConfirmPopupDialogIntent(Landroid/content/Intent;II)V
    .registers 10
    .param p1, "saveIntent"    # Landroid/content/Intent;
    .param p2, "titleId"    # I
    .param p3, "messageId"    # I

    .prologue
    const/4 v5, 0x0

    .line 387
    const-string v3, "com.lge.nfc.action.confirmpopup_positive_result"

    invoke-direct {p0, p1, v3}, Lcom/android/nfc/LNfcDispatcher;->makeRegisterIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 389
    .local v2, "positiveButtonIntent":Landroid/content/Intent;
    new-instance v3, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    invoke-direct {v3}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;-><init>()V

    .line 390
    iget-object v4, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->title(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v3

    .line 391
    iget-object v4, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->message(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v3

    .line 392
    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v5, v4}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->positiveButtonIntent(Landroid/content/Intent;ZLandroid/os/UserHandle;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v3

    .line 393
    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->negativeButtonIntent(Landroid/content/Intent;Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v3

    .line 394
    const v4, 0x7f080017

    invoke-virtual {v3, v4}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->positiveButtonToken(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v3

    .line 395
    const v4, 0x7f080018

    invoke-virtual {v3, v4}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->negativeButtonToken(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v3

    .line 396
    invoke-virtual {v3, v5}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->defaultCheckbox(Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->build()Lcom/android/nfc/utils/LNfcPopupInformation;

    move-result-object v1

    .line 397
    .local v1, "popupInfor":Lcom/android/nfc/utils/LNfcPopupInformation;
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/nfc/utils/LNfcPopupDialog;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 398
    .local v0, "bintent":Landroid/content/Intent;
    const-string v3, "com.lge.nfc.action.NFC_POPUP"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    const v3, 0x10008000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 400
    const-string v3, "com.lge.nfc.extra.POPUP_INFORMATION"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 401
    iget-object v3, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 402
    return-void
.end method

.method private makeEmptyTagPopupDialogIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 8
    .param p1, "saveIntent"    # Landroid/content/Intent;
    .param p2, "popupTitle"    # Ljava/lang/String;
    .param p3, "popupMessage"    # Ljava/lang/String;

    .prologue
    .line 373
    new-instance v2, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    invoke-direct {v2}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;-><init>()V

    .line 374
    invoke-virtual {v2, p2}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->title(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v2

    .line 375
    invoke-virtual {v2, p3}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->message(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v2

    .line 376
    const v3, 0x104000a

    invoke-virtual {v2, v3}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->positiveButtonToken(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v2

    .line 377
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->selectPopup(Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->build()Lcom/android/nfc/utils/LNfcPopupInformation;

    move-result-object v0

    .line 378
    .local v0, "infor":Lcom/android/nfc/utils/LNfcPopupInformation;
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/nfc/utils/LNfcPopupDialog;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 379
    .local v1, "popupIntent":Landroid/content/Intent;
    const-string v2, "com.lge.nfc.action.NFC_POPUP"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 381
    const-string v2, "com.lge.nfc.extra.POPUP_INFORMATION"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 383
    return-object v1
.end method

.method private makePopupDialogIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 9
    .param p1, "positiveButtonIntent"    # Landroid/content/Intent;
    .param p2, "popupTitle"    # Ljava/lang/String;
    .param p3, "popupMessage"    # Ljava/lang/String;

    .prologue
    .line 357
    new-instance v2, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    invoke-direct {v2}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;-><init>()V

    .line 358
    invoke-virtual {v2, p2}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->title(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v2

    .line 359
    invoke-virtual {v2, p3}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->message(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v2

    .line 360
    const/4 v3, 0x0

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->positiveButtonIntent(Landroid/content/Intent;ZLandroid/os/UserHandle;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v2

    .line 361
    const v3, 0x7f080017

    invoke-virtual {v2, v3}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->positiveButtonToken(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v2

    .line 362
    const v3, 0x7f080018

    invoke-virtual {v2, v3}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->negativeButtonToken(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v2

    .line 363
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->defaultCheckbox(Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->build()Lcom/android/nfc/utils/LNfcPopupInformation;

    move-result-object v0

    .line 364
    .local v0, "infor":Lcom/android/nfc/utils/LNfcPopupInformation;
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/nfc/utils/LNfcPopupDialog;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 365
    .local v1, "popupIntent":Landroid/content/Intent;
    const-string v2, "com.lge.nfc.action.NFC_POPUP"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 367
    const-string v2, "com.lge.nfc.extra.POPUP_INFORMATION"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 369
    return-object v1
.end method

.method private makeRegisterIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .registers 7
    .param p1, "saveIntent"    # Landroid/content/Intent;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 405
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 406
    .local v1, "positiveButtonIntent":Landroid/content/Intent;
    const-string v2, "com.lge.nfc.intent.extra.send_intent"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 408
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 409
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/nfc/LNfcDispatcher;->mLReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 410
    return-object v1
.end method

.method private makeRootActivityIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 5
    .param p1, "saveIntent"    # Landroid/content/Intent;

    .prologue
    .line 414
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/nfc/NfcRootActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 415
    .local v0, "rootIntent":Landroid/content/Intent;
    const-string v1, "launchIntent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 416
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 417
    const-string v1, "launchIntent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 418
    return-object v0
.end method

.method private sendIntenttoEmptyPopupDialog(Landroid/content/Intent;)Z
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const v7, 0x7f08003a

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 250
    sget-object v5, Lcom/android/nfc/LNfcDispatcher;->TAG:Ljava/lang/String;

    const-string v6, "sendIntenttoEmptyPopupDialog"

    invoke-static {v5, v6}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v5, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 252
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1d

    .line 278
    :cond_1c
    :goto_1c
    return v3

    .line 256
    :cond_1d
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1c

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_1c

    .line 259
    iget-object v3, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 262
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_2f
    const-string v3, "com.android.vending"

    const/16 v5, 0x80

    invoke-virtual {v1, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_36
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2f .. :try_end_36} :catch_52

    .line 272
    iget-object v3, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 273
    iget-object v5, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const v6, 0x7f08003b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 271
    invoke-direct {p0, p1, v3, v5}, Lcom/android/nfc/LNfcDispatcher;->makeEmptyTagPopupDialogIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 274
    .local v2, "popupIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    move v3, v4

    .line 275
    goto :goto_1c

    .line 264
    .end local v2    # "popupIntent":Landroid/content/Intent;
    :catch_52
    move-exception v3

    .line 265
    iget-object v3, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 266
    iget-object v5, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const v6, 0x7f08003c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 264
    invoke-direct {p0, p1, v3, v5}, Lcom/android/nfc/LNfcDispatcher;->makeEmptyTagPopupDialogIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 267
    .restart local v2    # "popupIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    move v3, v4

    .line 268
    goto :goto_1c
.end method

.method private sendIntenttoGSMAPopupDialog(Landroid/content/Intent;)Z
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 308
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v1

    .line 309
    .local v1, "nfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    if-nez v1, :cond_9

    .line 353
    :cond_8
    :goto_8
    return v4

    .line 312
    :cond_9
    invoke-virtual {v1, v5}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAddonPreference(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 316
    invoke-direct {p0, p1}, Lcom/android/nfc/LNfcDispatcher;->makeRootActivityIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "com.lge.nfc.action.gsma_popup_positive_result"

    invoke-direct {p0, v6, v7}, Lcom/android/nfc/LNfcDispatcher;->makeRegisterIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 318
    .local v3, "positiveButtonIntent":Landroid/content/Intent;
    invoke-direct {p0, p1}, Lcom/android/nfc/LNfcDispatcher;->startActivitybyCallType(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_21

    move v4, v5

    .line 319
    goto :goto_8

    .line 322
    :cond_21
    invoke-direct {p0, p1}, Lcom/android/nfc/LNfcDispatcher;->startActivitybyMailType(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_29

    move v4, v5

    .line 323
    goto :goto_8

    .line 326
    :cond_29
    invoke-direct {p0, p1, v5}, Lcom/android/nfc/LNfcDispatcher;->startActivitybyMimeType(Landroid/content/Intent;Z)Z

    move-result v6

    if-eqz v6, :cond_31

    move v4, v5

    .line 327
    goto :goto_8

    .line 330
    :cond_31
    invoke-direct {p0, p1, v5}, Lcom/android/nfc/LNfcDispatcher;->startActivitybySchemeType(Landroid/content/Intent;Z)Z

    move-result v6

    if-eqz v6, :cond_39

    move v4, v5

    .line 331
    goto :goto_8

    .line 333
    :cond_39
    invoke-direct {p0, p1}, Lcom/android/nfc/LNfcDispatcher;->startActivitybyTextType(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_41

    move v4, v5

    .line 334
    goto :goto_8

    .line 336
    :cond_41
    invoke-direct {p0, p1}, Lcom/android/nfc/LNfcDispatcher;->startActivitybySmsType(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_49

    move v4, v5

    .line 337
    goto :goto_8

    .line 340
    :cond_49
    new-instance v6, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    invoke-direct {v6}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;-><init>()V

    .line 341
    iget-object v7, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const v8, 0x7f080038

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->title(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v6

    .line 342
    iget-object v7, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const v8, 0x7f080039

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->message(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v6

    .line 343
    sget-object v7, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v6, v3, v4, v7}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->positiveButtonIntent(Landroid/content/Intent;ZLandroid/os/UserHandle;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v4

    .line 344
    const v6, 0x7f080017

    invoke-virtual {v4, v6}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->positiveButtonToken(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v4

    .line 345
    const v6, 0x7f080018

    invoke-virtual {v4, v6}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->negativeButtonToken(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v4

    .line 346
    invoke-virtual {v4, v5}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->defaultCheckbox(Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->build()Lcom/android/nfc/utils/LNfcPopupInformation;

    move-result-object v0

    .line 347
    .local v0, "infor":Lcom/android/nfc/utils/LNfcPopupInformation;
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/nfc/utils/LNfcPopupDialog;

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 348
    .local v2, "popupIntent":Landroid/content/Intent;
    const-string v4, "com.lge.nfc.action.NFC_POPUP"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    const v4, 0x10008000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 350
    const-string v4, "com.lge.nfc.extra.POPUP_INFORMATION"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 352
    iget-object v4, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    move v4, v5

    .line 353
    goto/16 :goto_8
.end method

.method private sendIntenttoVZWPopupDialog(Landroid/content/Intent;)Z
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 282
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v0

    .line 283
    .local v0, "nfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    if-nez v0, :cond_9

    .line 304
    :cond_8
    :goto_8
    return v1

    .line 286
    :cond_9
    invoke-virtual {v0, v2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAddonPreference(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 289
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAddonPreference(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 290
    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAddonPreference(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 294
    :cond_1e
    sget-object v3, Lcom/android/nfc/LNfcDispatcher;->TAG:Ljava/lang/String;

    const-string v4, "sendIntenttoPopupDialog"

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-direct {p0, p1, v1}, Lcom/android/nfc/LNfcDispatcher;->startActivitybyMimeType(Landroid/content/Intent;Z)Z

    move-result v3

    if-eqz v3, :cond_2d

    move v1, v2

    .line 297
    goto :goto_8

    .line 300
    :cond_2d
    invoke-direct {p0, p1, v1}, Lcom/android/nfc/LNfcDispatcher;->startActivitybySchemeType(Landroid/content/Intent;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    move v1, v2

    .line 301
    goto :goto_8
.end method

.method private startActivitybyCallType(Landroid/content/Intent;)Z
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 191
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_46

    .line 193
    const-string v5, "tel:"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 194
    const-string v5, "tel:"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-direct {p0, p1}, Lcom/android/nfc/LNfcDispatcher;->makeRootActivityIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.lge.nfc.action.gsma_popup_positive_result"

    invoke-direct {p0, v5, v6}, Lcom/android/nfc/LNfcDispatcher;->makeRegisterIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 198
    .local v2, "positivePopupIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const v6, 0x7f080038

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 199
    iget-object v6, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const v7, 0x7f080035

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v0, v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 197
    invoke-direct {p0, v2, v5, v4}, Lcom/android/nfc/LNfcDispatcher;->makePopupDialogIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 201
    .local v1, "popupIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 205
    .end local v1    # "popupIntent":Landroid/content/Intent;
    .end local v2    # "positivePopupIntent":Landroid/content/Intent;
    :goto_45
    return v3

    :cond_46
    move v3, v4

    goto :goto_45
.end method

.method private startActivitybyMailType(Landroid/content/Intent;)Z
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 169
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "data":Ljava/lang/String;
    const/4 v1, 0x0

    .line 171
    .local v1, "index":I
    if-eqz v0, :cond_54

    .line 172
    const-string v6, "mailto:"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_54

    .line 173
    const-string v6, "mailto:"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 174
    const-string v6, "?"

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 175
    const/4 v6, -0x1

    if-eq v1, v6, :cond_28

    .line 176
    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 178
    :cond_28
    invoke-direct {p0, p1}, Lcom/android/nfc/LNfcDispatcher;->makeRootActivityIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "com.lge.nfc.action.gsma_popup_positive_result"

    invoke-direct {p0, v6, v7}, Lcom/android/nfc/LNfcDispatcher;->makeRegisterIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 180
    .local v3, "positivePopupIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const v7, 0x7f080038

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 181
    iget-object v7, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const v8, 0x7f080033

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v0, v9, v5

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 179
    invoke-direct {p0, v3, v6, v5}, Lcom/android/nfc/LNfcDispatcher;->makePopupDialogIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 183
    .local v2, "popupIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 187
    .end local v2    # "popupIntent":Landroid/content/Intent;
    .end local v3    # "positivePopupIntent":Landroid/content/Intent;
    :goto_53
    return v4

    :cond_54
    move v4, v5

    goto :goto_53
.end method

.method private startActivitybyMimeType(Landroid/content/Intent;Z)Z
    .registers 20
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "isGsma"    # Z

    .prologue
    .line 85
    const-string v12, "android.nfc.extra.NDEF_MESSAGES"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 86
    .local v3, "intentMsg":[Landroid/os/Parcelable;
    const/4 v5, 0x0

    .line 87
    .local v5, "msg":Landroid/nfc/NdefMessage;
    const/4 v7, 0x0

    .line 88
    .local v7, "phone_data":[Lcom/android/vcard/VCardEntry$PhoneData;
    const/4 v11, 0x0

    .line 89
    .local v11, "vcard_record":Lcom/android/nfc/VCardRecord;
    const-string v1, ""

    .line 90
    .local v1, "full_name":Ljava/lang/String;
    const-string v8, ""

    .line 92
    .local v8, "phone_num":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_23

    if-eqz v3, :cond_23

    const-string v12, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2c

    .line 93
    :cond_23
    sget-object v12, Lcom/android/nfc/LNfcDispatcher;->TAG:Ljava/lang/String;

    const-string v13, "null || Unknowon intent."

    invoke-static {v12, v13}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v12, 0x0

    .line 145
    :goto_2b
    return v12

    .line 97
    :cond_2c
    const/4 v12, 0x0

    aget-object v5, v3, v12

    .end local v5    # "msg":Landroid/nfc/NdefMessage;
    check-cast v5, Landroid/nfc/NdefMessage;

    .line 98
    .restart local v5    # "msg":Landroid/nfc/NdefMessage;
    if-nez v5, :cond_3c

    .line 99
    sget-object v12, Lcom/android/nfc/LNfcDispatcher;->TAG:Ljava/lang/String;

    const-string v13, "msg is null"

    invoke-static {v12, v13}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v12, 0x0

    goto :goto_2b

    .line 103
    :cond_3c
    invoke-virtual {v5}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v4, v12, v13

    .line 104
    .local v4, "mRecord":Landroid/nfc/NdefRecord;
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v6

    .line 105
    .local v6, "payload":[B
    if-nez v6, :cond_52

    .line 106
    sget-object v12, Lcom/android/nfc/LNfcDispatcher;->TAG:Ljava/lang/String;

    const-string v13, "payload is null"

    invoke-static {v12, v13}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const/4 v12, 0x0

    goto :goto_2b

    .line 110
    :cond_52
    new-instance v11, Lcom/android/nfc/VCardRecord;

    .end local v11    # "vcard_record":Lcom/android/nfc/VCardRecord;
    invoke-direct {v11, v6}, Lcom/android/nfc/VCardRecord;-><init>([B)V

    .line 111
    .restart local v11    # "vcard_record":Lcom/android/nfc/VCardRecord;
    if-nez v11, :cond_62

    .line 112
    sget-object v12, Lcom/android/nfc/LNfcDispatcher;->TAG:Ljava/lang/String;

    const-string v13, "vcard_record is null"

    invoke-static {v12, v13}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/4 v12, 0x0

    goto :goto_2b

    .line 117
    :cond_62
    invoke-virtual {v11}, Lcom/android/nfc/VCardRecord;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-virtual {v11}, Lcom/android/nfc/VCardRecord;->getPhoneList()Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_8b

    invoke-virtual {v11}, Lcom/android/nfc/VCardRecord;->getPhoneList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_8b

    .line 121
    invoke-virtual {v11}, Lcom/android/nfc/VCardRecord;->getPhoneList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    new-array v7, v12, [Lcom/android/vcard/VCardEntry$PhoneData;

    .line 122
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_81
    invoke-virtual {v11}, Lcom/android/nfc/VCardRecord;->getPhoneList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-lt v2, v12, :cond_93

    .line 133
    .end local v2    # "i":I
    :cond_8b
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_8c
    sget-object v12, Lcom/android/nfc/LNfcDispatcher;->CONTACT_MIME_MAP:[Ljava/lang/String;

    array-length v12, v12

    if-lt v2, v12, :cond_d6

    .line 145
    const/4 v12, 0x0

    goto :goto_2b

    .line 123
    :cond_93
    invoke-virtual {v11}, Lcom/android/nfc/VCardRecord;->getPhoneList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/vcard/VCardEntry$PhoneData;

    aput-object v12, v7, v2

    .line 124
    aget-object v12, v7, v2

    invoke-virtual {v12}, Lcom/android/vcard/VCardEntry$PhoneData;->getNumber()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_d3

    .line 125
    if-eqz v2, :cond_bc

    .line 126
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 128
    :cond_bc
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v13, v7, v2

    invoke-virtual {v13}, Lcom/android/vcard/VCardEntry$PhoneData;->getNumber()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 122
    :cond_d3
    add-int/lit8 v2, v2, 0x1

    goto :goto_81

    .line 134
    :cond_d6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/nfc/LNfcDispatcher;->CONTACT_MIME_MAP:[Ljava/lang/String;

    aget-object v13, v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_128

    .line 135
    invoke-direct/range {p0 .. p1}, Lcom/android/nfc/LNfcDispatcher;->makeRootActivityIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v13

    if-eqz p2, :cond_125

    const-string v12, "com.lge.nfc.action.gsma_popup_positive_result"

    :goto_ec
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v12}, Lcom/android/nfc/LNfcDispatcher;->makeRegisterIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .line 137
    .local v10, "positivePopupIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const v13, 0x7f080038

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 138
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const v14, 0x7f080032

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v1, v15, v16

    const/16 v16, 0x1

    aput-object v8, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 136
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v12, v13}, Lcom/android/nfc/LNfcDispatcher;->makePopupDialogIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 140
    .local v9, "popupIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v12, v9, v13}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 141
    const/4 v12, 0x1

    goto/16 :goto_2b

    .line 135
    .end local v9    # "popupIntent":Landroid/content/Intent;
    .end local v10    # "positivePopupIntent":Landroid/content/Intent;
    :cond_125
    const-string v12, "com.lge.nfc.action.vzw_popup_positive_result"

    goto :goto_ec

    .line 133
    :cond_128
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8c
.end method

.method private startActivitybySchemeType(Landroid/content/Intent;Z)Z
    .registers 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "isGsma"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 148
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_e

    .line 150
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    sget-object v4, Lcom/android/nfc/LNfcDispatcher;->BROWSER_SCHEME_MAP:[Ljava/lang/String;

    array-length v4, v4

    if-lt v1, v4, :cond_10

    .end local v1    # "i":I
    :cond_e
    move v4, v6

    .line 165
    :goto_f
    return v4

    .line 151
    .restart local v1    # "i":I
    :cond_10
    sget-object v4, Lcom/android/nfc/LNfcDispatcher;->BROWSER_SCHEME_MAP:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 152
    sget-object v4, Lcom/android/nfc/LNfcDispatcher;->BROWSER_SCHEME_MAP:[Ljava/lang/String;

    aget-object v4, v4, v1

    const-string v7, "http://"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    sget-object v4, Lcom/android/nfc/LNfcDispatcher;->BROWSER_SCHEME_MAP:[Ljava/lang/String;

    aget-object v4, v4, v1

    const-string v7, "https://"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 153
    :cond_32
    sget-object v4, Lcom/android/nfc/LNfcDispatcher;->BROWSER_SCHEME_MAP:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 155
    :cond_3e
    invoke-direct {p0, p1}, Lcom/android/nfc/LNfcDispatcher;->makeRootActivityIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v7

    if-eqz p2, :cond_6d

    const-string v4, "com.lge.nfc.action.gsma_popup_positive_result"

    :goto_46
    invoke-direct {p0, v7, v4}, Lcom/android/nfc/LNfcDispatcher;->makeRegisterIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 157
    .local v3, "positivePopupIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const v7, 0x7f080038

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 158
    iget-object v7, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const v8, 0x7f080031

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v0, v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 156
    invoke-direct {p0, v3, v4, v6}, Lcom/android/nfc/LNfcDispatcher;->makePopupDialogIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 160
    .local v2, "popupIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    move v4, v5

    .line 161
    goto :goto_f

    .line 155
    .end local v2    # "popupIntent":Landroid/content/Intent;
    .end local v3    # "positivePopupIntent":Landroid/content/Intent;
    :cond_6d
    const-string v4, "com.lge.nfc.action.vzw_popup_positive_result"

    goto :goto_46

    .line 150
    :cond_70
    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method

.method private startActivitybySmsType(Landroid/content/Intent;)Z
    .registers 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 225
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "data":Ljava/lang/String;
    const/4 v2, 0x0

    .line 227
    .local v2, "index":I
    if-eqz v0, :cond_f

    .line 228
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    sget-object v7, Lcom/android/nfc/LNfcDispatcher;->SMS_HEADER_MAP:[Ljava/lang/String;

    array-length v7, v7

    if-lt v1, v7, :cond_11

    .end local v1    # "i":I
    :cond_f
    move v5, v6

    .line 247
    :goto_10
    return v5

    .line 229
    .restart local v1    # "i":I
    :cond_11
    sget-object v7, Lcom/android/nfc/LNfcDispatcher;->SMS_HEADER_MAP:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_60

    .line 231
    sget-object v7, Lcom/android/nfc/LNfcDispatcher;->SMS_HEADER_MAP:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 232
    const-string v7, "?"

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 233
    const/4 v7, -0x1

    if-eq v2, v7, :cond_34

    .line 234
    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 236
    :cond_34
    invoke-direct {p0, p1}, Lcom/android/nfc/LNfcDispatcher;->makeRootActivityIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "com.lge.nfc.action.gsma_popup_positive_result"

    invoke-direct {p0, v7, v8}, Lcom/android/nfc/LNfcDispatcher;->makeRegisterIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 238
    .local v4, "positivePopupIntent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const v8, 0x7f080038

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 239
    iget-object v8, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const v9, 0x7f080036

    new-array v10, v5, [Ljava/lang/Object;

    aput-object v0, v10, v6

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 237
    invoke-direct {p0, v4, v7, v6}, Lcom/android/nfc/LNfcDispatcher;->makePopupDialogIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 242
    .local v3, "popupIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_10

    .line 228
    .end local v3    # "popupIntent":Landroid/content/Intent;
    .end local v4    # "positivePopupIntent":Landroid/content/Intent;
    :cond_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method

.method private startActivitybyTextType(Landroid/content/Intent;)Z
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 209
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_37

    .line 211
    const-string v3, "text/plain"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 212
    invoke-direct {p0, p1}, Lcom/android/nfc/LNfcDispatcher;->makeRootActivityIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.lge.nfc.action.gsma_popup_positive_result"

    invoke-direct {p0, v3, v4}, Lcom/android/nfc/LNfcDispatcher;->makeRegisterIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 214
    .local v2, "positivePopupIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const v4, 0x7f080038

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 215
    iget-object v4, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const v5, 0x7f080034

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 213
    invoke-direct {p0, v2, v3, v4}, Lcom/android/nfc/LNfcDispatcher;->makePopupDialogIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 217
    .local v1, "popupIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 218
    const/4 v3, 0x1

    .line 221
    .end local v1    # "popupIntent":Landroid/content/Intent;
    .end local v2    # "positivePopupIntent":Landroid/content/Intent;
    :goto_36
    return v3

    :cond_37
    const/4 v3, 0x0

    goto :goto_36
.end method


# virtual methods
.method protected alwaysLockScreenPolling()Z
    .registers 2

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/nfc/LNfcDispatcher;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mLockScreenPollingEnable:Z

    return v0
.end method

.method protected applyPopupDialogScenario(Lcom/android/nfc/NfcDispatcher$DispatchInfo;)Z
    .registers 9
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 668
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setNdefIntent()Landroid/content/Intent;

    move-result-object v1

    .line 670
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_10

    .line 671
    sget-object v4, Lcom/android/nfc/LNfcDispatcher;->TAG:Ljava/lang/String;

    const-string v5, "Invalid Sequence : intent is null"

    invoke-static {v4, v5}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    :cond_f
    :goto_f
    return v3

    .line 675
    :cond_10
    iget-object v5, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 676
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_f

    .line 680
    iget-object v5, p0, Lcom/android/nfc/LNfcDispatcher;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v5, v5, Lcom/lge/nfcconfig/NfcConfigure;->mPopupDialogType:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    sget-object v6, Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;->vzw:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    if-ne v5, v6, :cond_39

    .line 681
    invoke-direct {p0, v1}, Lcom/android/nfc/LNfcDispatcher;->sendIntenttoVZWPopupDialog(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 682
    sget-boolean v3, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    sget-object v5, Lcom/android/nfc/LNfcDispatcher;->TAG:Ljava/lang/String;

    const-string v6, "send VZW Popup Dialog"

    invoke-static {v3, v5, v6}, Lcom/android/nfc/utils/LNfcLog;->i(ZLjava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 683
    goto :goto_f

    .line 685
    :cond_39
    iget-object v5, p0, Lcom/android/nfc/LNfcDispatcher;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v5, v5, Lcom/lge/nfcconfig/NfcConfigure;->mPopupDialogType:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    sget-object v6, Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;->gsma:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    if-ne v5, v6, :cond_f

    .line 686
    const-string v5, "android.nfc.extra.TAG"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/nfc/Tag;

    .line 687
    .local v2, "taginfo":Landroid/nfc/Tag;
    invoke-virtual {p0, v2}, Lcom/android/nfc/LNfcDispatcher;->isAndroidBeamReceived(Landroid/nfc/Tag;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 688
    invoke-direct {p0, v1}, Lcom/android/nfc/LNfcDispatcher;->sendIntenttoGSMAPopupDialog(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 689
    sget-boolean v3, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    sget-object v5, Lcom/android/nfc/LNfcDispatcher;->TAG:Ljava/lang/String;

    const-string v6, "send GSMA Popup Dialog"

    invoke-static {v3, v5, v6}, Lcom/android/nfc/utils/LNfcLog;->i(ZLjava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 690
    goto :goto_f
.end method

.method protected checkEmptyTag(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;)Z
    .registers 8
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .param p2, "tag"    # Landroid/nfc/Tag;

    .prologue
    const/4 v2, 0x0

    .line 541
    const/4 v0, 0x0

    .line 542
    .local v0, "message":Landroid/nfc/NdefMessage;
    invoke-static {p2}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v1

    .line 543
    .local v1, "ndef":Landroid/nfc/tech/Ndef;
    if-eqz v1, :cond_32

    .line 544
    invoke-virtual {v1}, Landroid/nfc/tech/Ndef;->getCachedNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v0

    .line 545
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v3

    if-nez v3, :cond_32

    .line 546
    :cond_1a
    iget-object v3, p0, Lcom/android/nfc/LNfcDispatcher;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v3, v3, Lcom/lge/nfcconfig/NfcConfigure;->mEmptyPopupSupport:Z

    if-eqz v3, :cond_32

    .line 547
    iget-object v3, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-direct {p0, v3}, Lcom/android/nfc/LNfcDispatcher;->sendIntenttoEmptyPopupDialog(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 548
    sget-boolean v2, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    sget-object v3, Lcom/android/nfc/LNfcDispatcher;->TAG:Ljava/lang/String;

    const-string v4, "send EmptyPopup Dialog"

    invoke-static {v2, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 549
    const/4 v2, 0x1

    .line 554
    :cond_32
    return v2
.end method

.method protected checkSMSTag(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Ljava/util/ArrayList;)Z
    .registers 18
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/nfc/NfcDispatcher$DispatchInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 559
    .local p2, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefUri:Landroid/net/Uri;

    if-nez v10, :cond_8

    .line 560
    const/4 v10, 0x0

    .line 618
    :goto_7
    return v10

    .line 562
    :cond_8
    if-eqz p2, :cond_22

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_22

    .line 563
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/content/pm/ResolveInfo;

    array-length v12, v10

    const/4 v11, 0x0

    :goto_20
    if-lt v11, v12, :cond_32

    .line 570
    :cond_22
    :try_start_22
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefUri:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 577
    .local v6, "payloadString":Ljava/lang/String;
    sget-object v11, Lcom/android/nfc/LNfcDispatcher;->SMS_HEADER_MAP:[Ljava/lang/String;

    array-length v12, v11
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2d} :catch_db

    const/4 v10, 0x0

    :goto_2e
    if-lt v10, v12, :cond_3d

    .line 618
    .end local v6    # "payloadString":Ljava/lang/String;
    :goto_30
    const/4 v10, 0x0

    goto :goto_7

    .line 563
    :cond_32
    aget-object v1, v10, v11

    .line 564
    .local v1, "appinfor":Landroid/content/pm/ResolveInfo;
    iget v13, v1, Landroid/content/pm/ResolveInfo;->priority:I

    if-lez v13, :cond_3a

    .line 565
    const/4 v10, 0x0

    goto :goto_7

    .line 563
    :cond_3a
    add-int/lit8 v11, v11, 0x1

    goto :goto_20

    .line 577
    .end local v1    # "appinfor":Landroid/content/pm/ResolveInfo;
    .restart local v6    # "payloadString":Ljava/lang/String;
    :cond_3d
    :try_start_3d
    aget-object v3, v11, v10

    .line 578
    .local v3, "header":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d7

    .line 579
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 580
    .local v9, "smsuri":Landroid/net/Uri;
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const-string v11, "android.intent.action.SENDTO"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 582
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v10, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 584
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const-string v11, "sms_body"

    invoke-virtual {p0, v9}, Lcom/android/nfc/LNfcDispatcher;->parseUritoSMSPayload(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    iget-object v10, p0, Lcom/android/nfc/LNfcDispatcher;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v10, v10, Lcom/lge/nfcconfig/NfcConfigure;->mPopupDialogType:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    sget-object v11, Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;->gsma:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    if-ne v10, v11, :cond_d1

    .line 586
    const/4 v4, 0x0

    .line 587
    .local v4, "index":I
    const-string v2, ""

    .line 589
    .local v2, "data":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 590
    const-string v10, "?"

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 591
    const/4 v10, -0x1

    if-eq v4, v10, :cond_87

    .line 592
    const/4 v10, 0x0

    invoke-virtual {v2, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 595
    :cond_87
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v5

    .line 596
    .local v5, "nfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    if-nez v5, :cond_90

    .line 597
    const/4 v10, 0x0

    goto/16 :goto_7

    .line 600
    :cond_90
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAddonPreference(I)Z

    move-result v10

    if-nez v10, :cond_9d

    .line 601
    invoke-virtual/range {p1 .. p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    move-result v10

    goto/16 :goto_7

    .line 603
    :cond_9d
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-direct {p0, v10}, Lcom/android/nfc/LNfcDispatcher;->makeRootActivityIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "com.lge.nfc.action.gsma_popup_positive_result"

    invoke-direct {p0, v10, v11}, Lcom/android/nfc/LNfcDispatcher;->makeRegisterIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 605
    .local v8, "positivePopupIntent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const v11, 0x7f080038

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 606
    iget-object v11, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const v12, 0x7f080036

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 604
    invoke-direct {p0, v8, v10, v11}, Lcom/android/nfc/LNfcDispatcher;->makePopupDialogIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 608
    .local v7, "popupIntent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    sget-object v11, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v10, v7, v11}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 609
    const/4 v10, 0x1

    goto/16 :goto_7

    .line 612
    .end local v2    # "data":Ljava/lang/String;
    .end local v4    # "index":I
    .end local v5    # "nfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    .end local v7    # "popupIntent":Landroid/content/Intent;
    .end local v8    # "positivePopupIntent":Landroid/content/Intent;
    :cond_d1
    invoke-virtual/range {p1 .. p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_d4} :catch_db

    move-result v10

    goto/16 :goto_7

    .line 577
    .end local v9    # "smsuri":Landroid/net/Uri;
    :cond_d7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2e

    .end local v3    # "header":Ljava/lang/String;
    .end local v6    # "payloadString":Ljava/lang/String;
    :catch_db
    move-exception v10

    goto/16 :goto_30
.end method

.method protected checkTEXTTag(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Ljava/util/ArrayList;)Z
    .registers 13
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/nfc/NfcDispatcher$DispatchInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 623
    iget-object v8, p0, Lcom/android/nfc/LNfcDispatcher;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v8, v8, Lcom/lge/nfcconfig/NfcConfigure;->mPopupDialogType:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    sget-object v9, Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;->gsma:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    if-ne v8, v9, :cond_e

    .line 624
    if-eqz p1, :cond_e

    if-nez p2, :cond_f

    .line 652
    :cond_e
    :goto_e
    return v6

    .line 627
    :cond_f
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v2

    .line 628
    .local v2, "nfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    if-eqz v2, :cond_e

    .line 631
    invoke-virtual {v2, v7}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAddonPreference(I)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 634
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setNdefIntent()Landroid/content/Intent;

    move-result-object v1

    .line 635
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_e

    .line 638
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    .line 639
    .local v5, "type":Ljava/lang/String;
    const-string v8, "text/plain"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 640
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 641
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    iget-object v6, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 642
    iget-object v6, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const-string v8, "android.nfc.action.TECH_DISCOVERED"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 643
    iget-object v6, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-direct {p0, v6}, Lcom/android/nfc/LNfcDispatcher;->makeRootActivityIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v6

    const-string v8, "com.lge.nfc.action.gsma_popup_positive_result"

    invoke-direct {p0, v6, v8}, Lcom/android/nfc/LNfcDispatcher;->makeRegisterIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 645
    .local v4, "positivePopupIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const v8, 0x7f080038

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 646
    iget-object v8, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const v9, 0x7f080034

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 644
    invoke-direct {p0, v4, v6, v8}, Lcom/android/nfc/LNfcDispatcher;->makePopupDialogIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 648
    .local v3, "popupIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v3, v8}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    move v6, v7

    .line 649
    goto :goto_e
.end method

.method protected checkValidMessageType(Landroid/nfc/NdefMessage;)Z
    .registers 5
    .param p1, "message"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v1, 0x0

    .line 657
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v0

    .line 658
    .local v0, "tnf_val":I
    if-eqz v0, :cond_13

    .line 659
    const/4 v2, 0x6

    if-eq v0, v2, :cond_13

    .line 660
    const/4 v2, 0x5

    if-ne v0, v2, :cond_14

    .line 663
    :cond_13
    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x1

    goto :goto_13
.end method

.method public dispatchTag(Landroid/nfc/Tag;)I
    .registers 12
    .param p1, "tag"    # Landroid/nfc/Tag;

    .prologue
    const/4 v5, 0x2

    .line 506
    const/4 v1, 0x0

    .line 507
    .local v1, "message":Landroid/nfc/NdefMessage;
    invoke-static {p1}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v2

    .line 508
    .local v2, "ndef":Landroid/nfc/tech/Ndef;
    if-eqz v2, :cond_c

    .line 509
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->getCachedNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v1

    .line 512
    :cond_c
    iget-object v6, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/nfc/LNfcCommon;->isProvisionState(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_38

    if-eqz v1, :cond_38

    .line 514
    iget-object v6, p0, Lcom/android/nfc/LNfcDispatcher;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v6, v1}, Lcom/android/nfc/handover/HandoverDataParser;->parseBluetooth(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v0

    .line 515
    .local v0, "handover":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    if-eqz v0, :cond_2a

    iget-boolean v6, v0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    if-eqz v6, :cond_2a

    .line 516
    sget-object v6, Lcom/android/nfc/LNfcDispatcher;->TAG:Ljava/lang/String;

    const-string v7, "skip read bt tag"

    invoke-static {v6, v7}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    .end local v0    # "handover":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    :goto_29
    return v5

    .line 520
    .restart local v0    # "handover":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    :cond_2a
    invoke-static {}, Lcom/android/nfc/LNfcCommon;->isDefalutOffModel()Z

    move-result v6

    if-eqz v6, :cond_38

    .line 521
    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v4

    .line 522
    .local v4, "records":[Landroid/nfc/NdefRecord;
    array-length v7, v4

    const/4 v6, 0x0

    :goto_36
    if-lt v6, v7, :cond_3d

    .line 531
    .end local v0    # "handover":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .end local v4    # "records":[Landroid/nfc/NdefRecord;
    :cond_38
    invoke-super {p0, p1}, Lcom/android/nfc/NfcDispatcher;->dispatchTag(Landroid/nfc/Tag;)I

    move-result v5

    goto :goto_29

    .line 522
    .restart local v0    # "handover":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .restart local v4    # "records":[Landroid/nfc/NdefRecord;
    :cond_3d
    aget-object v3, v4, v6

    .line 523
    .local v3, "record":Landroid/nfc/NdefRecord;
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    const-string v9, "application/vnd.wfa.wsc"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_58

    .line 524
    sget-object v6, Lcom/android/nfc/LNfcDispatcher;->TAG:Ljava/lang/String;

    const-string v7, "skip read wifi tag"

    invoke-static {v6, v7}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    .line 522
    :cond_58
    add-int/lit8 v6, v6, 0x1

    goto :goto_36
.end method

.method isAndroidBeamReceived(Landroid/nfc/Tag;)Z
    .registers 8
    .param p1, "tag"    # Landroid/nfc/Tag;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 486
    if-nez p1, :cond_c

    .line 487
    sget-object v3, Lcom/android/nfc/LNfcDispatcher;->TAG:Ljava/lang/String;

    const-string v4, "tag object is null"

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    :cond_b
    :goto_b
    return v2

    .line 490
    :cond_c
    invoke-virtual {p1}, Landroid/nfc/Tag;->getId()[B

    move-result-object v0

    .line 491
    .local v0, "tagid":[B
    const/4 v4, 0x6

    invoke-virtual {p1, v4}, Landroid/nfc/Tag;->getTechExtras(I)Landroid/os/Bundle;

    move-result-object v1

    .line 493
    .local v1, "taginfor":Landroid/os/Bundle;
    if-eqz v0, :cond_b

    if-eqz v1, :cond_b

    new-array v4, v3, [B

    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 494
    const-string v4, "ndefmaxlength"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_b

    .line 495
    const-string v4, "ndefcardstate"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_b

    .line 496
    const-string v4, "ndeftype"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_b

    .line 497
    invoke-virtual {p1}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v4

    if-nez v4, :cond_b

    .line 498
    invoke-virtual {p1}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v4

    if-nez v4, :cond_b

    move v2, v3

    .line 499
    goto :goto_b
.end method

.method public parseUritoSMSPayload(Landroid/net/Uri;)Ljava/lang/String;
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 697
    if-nez p1, :cond_4

    .line 711
    :cond_3
    :goto_3
    return-object v2

    .line 700
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sms"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 701
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "smsto"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 705
    :cond_1c
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 706
    .local v1, "uriString":Ljava/lang/String;
    const/16 v3, 0x3f

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 708
    .local v0, "offset":I
    if-ltz v0, :cond_3

    .line 711
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/nfc/LNfcDispatcher;->getBodyText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3
.end method

.method public tryPeripheralHandover(Landroid/nfc/NdefMessage;)Z
    .registers 12
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 746
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 747
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_9

    .line 771
    :cond_8
    :goto_8
    return v4

    .line 751
    :cond_9
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    .line 752
    .local v3, "state":I
    const/16 v6, 0xd

    if-eq v3, v6, :cond_15

    .line 753
    const/16 v6, 0xb

    if-ne v3, v6, :cond_17

    :cond_15
    move v4, v5

    .line 754
    goto :goto_8

    .line 758
    :cond_17
    if-eqz p1, :cond_8

    iget-boolean v6, p0, Lcom/android/nfc/LNfcDispatcher;->mDeviceSupportsBluetooth:Z

    if-eqz v6, :cond_8

    .line 760
    sget-boolean v6, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    sget-object v7, Lcom/android/nfc/LNfcDispatcher;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "tryHandover(): "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 762
    iget-object v6, p0, Lcom/android/nfc/LNfcDispatcher;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v6, p1}, Lcom/android/nfc/handover/HandoverDataParser;->parseBluetooth(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v1

    .line 763
    .local v1, "handover":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    if-eqz v1, :cond_8

    iget-boolean v6, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    if-eqz v6, :cond_8

    .line 765
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/nfc/handover/LPeripheralHandoverService;

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 766
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "device"

    iget-object v6, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 767
    const-string v4, "headsetname"

    iget-object v6, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 768
    const-string v4, "transporttype"

    iget v6, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->transport:I

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 769
    iget-object v4, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v6}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move v4, v5

    .line 771
    goto :goto_8
.end method
