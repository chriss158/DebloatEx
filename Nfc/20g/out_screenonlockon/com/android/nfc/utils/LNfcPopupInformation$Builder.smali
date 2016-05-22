.class public Lcom/android/nfc/utils/LNfcPopupInformation$Builder;
.super Ljava/lang/Object;
.source "LNfcPopupInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/utils/LNfcPopupInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCancelButtonIntent:Landroid/content/Intent;

.field private mCancelButtonIntentUser:Landroid/os/UserHandle;

.field private mDefaultCheckboxEnable:Z

.field private mImageId:I

.field private mIsCancelButtonIntentActivity:Z

.field private mIsNegativeButtonIntentActivity:Z

.field private mIsPositiveButtonIntentActivity:Z

.field private mIsSelectPopup:Z

.field private mIsTitleIcon:Z

.field private mMessage:Ljava/lang/String;

.field private mMessage2:Ljava/lang/String;

.field private mNegativeButtonIntent:Landroid/content/Intent;

.field private mNegativeButtonIntentUser:Landroid/os/UserHandle;

.field private mNegativeButtonToken:I

.field private mPositiveButtonIntent:Landroid/content/Intent;

.field private mPositiveButtonIntentUser:Landroid/os/UserHandle;

.field private mPositiveButtonToken:I

.field private mRequireDefalutCheckbox:Z

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    const-string v0, ""

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mTitle:Ljava/lang/String;

    .line 302
    const-string v0, ""

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mMessage:Ljava/lang/String;

    .line 303
    const-string v0, ""

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mMessage2:Ljava/lang/String;

    .line 304
    iput-object v2, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mPositiveButtonIntent:Landroid/content/Intent;

    .line 305
    iput-object v2, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mNegativeButtonIntent:Landroid/content/Intent;

    .line 306
    iput-object v2, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mCancelButtonIntent:Landroid/content/Intent;

    .line 307
    iput-boolean v1, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mIsPositiveButtonIntentActivity:Z

    .line 308
    iput-boolean v1, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mIsNegativeButtonIntentActivity:Z

    .line 309
    iput-boolean v1, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mIsCancelButtonIntentActivity:Z

    .line 310
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mPositiveButtonIntentUser:Landroid/os/UserHandle;

    .line 311
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mNegativeButtonIntentUser:Landroid/os/UserHandle;

    .line 312
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mCancelButtonIntentUser:Landroid/os/UserHandle;

    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mIsSelectPopup:Z

    .line 314
    iput-boolean v1, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mRequireDefalutCheckbox:Z

    .line 315
    iput-boolean v1, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mDefaultCheckboxEnable:Z

    .line 316
    const v0, 0x104000a

    iput v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mPositiveButtonToken:I

    .line 317
    const/high16 v0, 0x1040000

    iput v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mNegativeButtonToken:I

    .line 318
    iput-boolean v1, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mIsTitleIcon:Z

    .line 319
    iput v1, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mImageId:I

    .line 322
    return-void
.end method

.method static synthetic access$0(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Landroid/os/UserHandle;
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mNegativeButtonIntentUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method static synthetic access$11(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Landroid/os/UserHandle;
    .registers 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mCancelButtonIntentUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method static synthetic access$12(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Z
    .registers 2

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mIsSelectPopup:Z

    return v0
.end method

.method static synthetic access$13(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Z
    .registers 2

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mRequireDefalutCheckbox:Z

    return v0
.end method

.method static synthetic access$14(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Z
    .registers 2

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mDefaultCheckboxEnable:Z

    return v0
.end method

.method static synthetic access$15(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)I
    .registers 2

    .prologue
    .line 316
    iget v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mPositiveButtonToken:I

    return v0
.end method

.method static synthetic access$16(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)I
    .registers 2

    .prologue
    .line 317
    iget v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mNegativeButtonToken:I

    return v0
.end method

.method static synthetic access$17(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Z
    .registers 2

    .prologue
    .line 318
    iget-boolean v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mIsTitleIcon:Z

    return v0
.end method

.method static synthetic access$18(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)I
    .registers 2

    .prologue
    .line 319
    iget v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mImageId:I

    return v0
.end method

.method static synthetic access$2(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mMessage2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Landroid/content/Intent;
    .registers 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mPositiveButtonIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Landroid/content/Intent;
    .registers 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mNegativeButtonIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$5(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Landroid/content/Intent;
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mCancelButtonIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$6(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Z
    .registers 2

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mIsPositiveButtonIntentActivity:Z

    return v0
.end method

.method static synthetic access$7(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Z
    .registers 2

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mIsNegativeButtonIntentActivity:Z

    return v0
.end method

.method static synthetic access$8(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Z
    .registers 2

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mIsCancelButtonIntentActivity:Z

    return v0
.end method

.method static synthetic access$9(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Landroid/os/UserHandle;
    .registers 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mPositiveButtonIntentUser:Landroid/os/UserHandle;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/android/nfc/utils/LNfcPopupInformation;
    .registers 3

    .prologue
    .line 414
    new-instance v0, Lcom/android/nfc/utils/LNfcPopupInformation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/nfc/utils/LNfcPopupInformation;-><init>(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;Lcom/android/nfc/utils/LNfcPopupInformation;)V

    return-object v0
.end method

.method public cancelButtonIntent(Landroid/content/Intent;Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;
    .registers 3
    .param p1, "cancelButtonIntent"    # Landroid/content/Intent;
    .param p2, "isActivity"    # Z

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mCancelButtonIntent:Landroid/content/Intent;

    .line 353
    iput-boolean p2, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mIsCancelButtonIntentActivity:Z

    .line 354
    return-object p0
.end method

.method public cancelButtonIntent(Landroid/content/Intent;ZLandroid/os/UserHandle;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;
    .registers 4
    .param p1, "cancelButtonIntent"    # Landroid/content/Intent;
    .param p2, "isActivity"    # Z
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mCancelButtonIntent:Landroid/content/Intent;

    .line 373
    iput-boolean p2, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mIsCancelButtonIntentActivity:Z

    .line 374
    iput-object p3, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mCancelButtonIntentUser:Landroid/os/UserHandle;

    .line 375
    return-object p0
.end method

.method public defaultCheckbox(Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;
    .registers 3
    .param p1, "requireDefaultcheckbox"    # Z

    .prologue
    .line 384
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->defaultCheckbox(ZZ)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public defaultCheckbox(ZZ)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;
    .registers 3
    .param p1, "requireDefaultcheckbox"    # Z
    .param p2, "defaultCheckboxEnable"    # Z

    .prologue
    .line 388
    iput-boolean p1, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mRequireDefalutCheckbox:Z

    .line 389
    iput-boolean p2, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mDefaultCheckboxEnable:Z

    .line 390
    return-object p0
.end method

.method public imageId(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;
    .registers 2
    .param p1, "imageId"    # I

    .prologue
    .line 409
    iput p1, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mImageId:I

    .line 410
    return-object p0
.end method

.method public message(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mMessage:Ljava/lang/String;

    .line 331
    return-object p0
.end method

.method public message2(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mMessage2:Ljava/lang/String;

    .line 336
    return-object p0
.end method

.method public negativeButtonIntent(Landroid/content/Intent;Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;
    .registers 3
    .param p1, "negativeButtonIntent"    # Landroid/content/Intent;
    .param p2, "isActivity"    # Z

    .prologue
    .line 346
    iput-object p1, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mNegativeButtonIntent:Landroid/content/Intent;

    .line 347
    iput-boolean p2, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mIsNegativeButtonIntentActivity:Z

    .line 348
    return-object p0
.end method

.method public negativeButtonIntent(Landroid/content/Intent;ZLandroid/os/UserHandle;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;
    .registers 4
    .param p1, "negativeButtonIntent"    # Landroid/content/Intent;
    .param p2, "isActivity"    # Z
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mNegativeButtonIntent:Landroid/content/Intent;

    .line 366
    iput-boolean p2, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mIsNegativeButtonIntentActivity:Z

    .line 367
    iput-object p3, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mNegativeButtonIntentUser:Landroid/os/UserHandle;

    .line 368
    return-object p0
.end method

.method public negativeButtonToken(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;
    .registers 2
    .param p1, "tokenid"    # I

    .prologue
    .line 399
    iput p1, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mNegativeButtonToken:I

    .line 400
    return-object p0
.end method

.method public positiveButtonIntent(Landroid/content/Intent;Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;
    .registers 3
    .param p1, "positiveButtonIntent"    # Landroid/content/Intent;
    .param p2, "isActivity"    # Z

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mPositiveButtonIntent:Landroid/content/Intent;

    .line 341
    iput-boolean p2, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mIsPositiveButtonIntentActivity:Z

    .line 342
    return-object p0
.end method

.method public positiveButtonIntent(Landroid/content/Intent;ZLandroid/os/UserHandle;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;
    .registers 4
    .param p1, "positiveButtonIntent"    # Landroid/content/Intent;
    .param p2, "isActivity"    # Z
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mPositiveButtonIntent:Landroid/content/Intent;

    .line 359
    iput-boolean p2, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mIsPositiveButtonIntentActivity:Z

    .line 360
    iput-object p3, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mPositiveButtonIntentUser:Landroid/os/UserHandle;

    .line 361
    return-object p0
.end method

.method public positiveButtonToken(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;
    .registers 2
    .param p1, "tokenid"    # I

    .prologue
    .line 394
    iput p1, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mPositiveButtonToken:I

    .line 395
    return-object p0
.end method

.method public selectPopup(Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;
    .registers 2
    .param p1, "isSelectPopup"    # Z

    .prologue
    .line 379
    iput-boolean p1, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mIsSelectPopup:Z

    .line 380
    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;
    .registers 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mTitle:Ljava/lang/String;

    .line 326
    return-object p0
.end method

.method public titleIcon(Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;
    .registers 2
    .param p1, "isTitleIcon"    # Z

    .prologue
    .line 404
    iput-boolean p1, p0, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mIsTitleIcon:Z

    .line 405
    return-object p0
.end method
