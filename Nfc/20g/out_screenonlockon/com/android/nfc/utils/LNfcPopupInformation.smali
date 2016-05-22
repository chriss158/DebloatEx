.class public Lcom/android/nfc/utils/LNfcPopupInformation;
.super Ljava/lang/Object;
.source "LNfcPopupInformation.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/utils/LNfcPopupInformation$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/nfc/utils/LNfcPopupInformation;",
            ">;"
        }
    .end annotation
.end field

.field private static final NUM_BOOLEAN_ARRAY:I = 0x4


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
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 193
    new-instance v0, Lcom/android/nfc/utils/LNfcPopupInformation$1;

    invoke-direct {v0}, Lcom/android/nfc/utils/LNfcPopupInformation$1;-><init>()V

    sput-object v0, Lcom/android/nfc/utils/LNfcPopupInformation;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 299
    return-void
.end method

.method private constructor <init>(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)V
    .registers 5
    .param p1, "builder"    # Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mTitle:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mMessage:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mMessage2:Ljava/lang/String;

    .line 20
    iput-object v2, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mPositiveButtonIntent:Landroid/content/Intent;

    .line 21
    iput-object v2, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mNegativeButtonIntent:Landroid/content/Intent;

    .line 22
    iput-object v2, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mCancelButtonIntent:Landroid/content/Intent;

    .line 23
    iput-boolean v1, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mIsPositiveButtonIntentActivity:Z

    .line 24
    iput-boolean v1, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mIsNegativeButtonIntentActivity:Z

    .line 25
    iput-boolean v1, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mIsCancelButtonIntentActivity:Z

    .line 26
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mPositiveButtonIntentUser:Landroid/os/UserHandle;

    .line 27
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mNegativeButtonIntentUser:Landroid/os/UserHandle;

    .line 28
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mCancelButtonIntentUser:Landroid/os/UserHandle;

    .line 29
    iput-boolean v1, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mIsSelectPopup:Z

    .line 30
    iput-boolean v1, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mRequireDefalutCheckbox:Z

    .line 31
    iput-boolean v1, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mDefaultCheckboxEnable:Z

    .line 34
    iput-boolean v1, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mIsTitleIcon:Z

    .line 35
    iput v1, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mImageId:I

    .line 40
    # getter for: Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mTitle:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->access$0(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mTitle:Ljava/lang/String;

    .line 41
    # getter for: Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mMessage:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->access$1(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mMessage:Ljava/lang/String;

    .line 42
    # getter for: Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mMessage2:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->access$2(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mMessage2:Ljava/lang/String;

    .line 43
    # getter for: Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mPositiveButtonIntent:Landroid/content/Intent;
    invoke-static {p1}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->access$3(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mPositiveButtonIntent:Landroid/content/Intent;

    .line 44
    # getter for: Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mNegativeButtonIntent:Landroid/content/Intent;
    invoke-static {p1}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->access$4(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mNegativeButtonIntent:Landroid/content/Intent;

    .line 45
    # getter for: Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mCancelButtonIntent:Landroid/content/Intent;
    invoke-static {p1}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->access$5(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mCancelButtonIntent:Landroid/content/Intent;

    .line 46
    # getter for: Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mIsPositiveButtonIntentActivity:Z
    invoke-static {p1}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->access$6(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mIsPositiveButtonIntentActivity:Z

    .line 47
    # getter for: Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mIsNegativeButtonIntentActivity:Z
    invoke-static {p1}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->access$7(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mIsNegativeButtonIntentActivity:Z

    .line 48
    # getter for: Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mIsCancelButtonIntentActivity:Z
    invoke-static {p1}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->access$8(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mIsCancelButtonIntentActivity:Z

    .line 49
    # getter for: Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mPositiveButtonIntentUser:Landroid/os/UserHandle;
    invoke-static {p1}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->access$9(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mPositiveButtonIntentUser:Landroid/os/UserHandle;

    .line 50
    # getter for: Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mNegativeButtonIntentUser:Landroid/os/UserHandle;
    invoke-static {p1}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->access$10(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mNegativeButtonIntentUser:Landroid/os/UserHandle;

    .line 51
    # getter for: Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mCancelButtonIntentUser:Landroid/os/UserHandle;
    invoke-static {p1}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->access$11(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mCancelButtonIntentUser:Landroid/os/UserHandle;

    .line 52
    # getter for: Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mIsSelectPopup:Z
    invoke-static {p1}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->access$12(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mIsSelectPopup:Z

    .line 53
    # getter for: Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mRequireDefalutCheckbox:Z
    invoke-static {p1}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->access$13(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mRequireDefalutCheckbox:Z

    .line 54
    # getter for: Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mDefaultCheckboxEnable:Z
    invoke-static {p1}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->access$14(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mDefaultCheckboxEnable:Z

    .line 55
    # getter for: Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mPositiveButtonToken:I
    invoke-static {p1}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->access$15(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mPositiveButtonToken:I

    .line 56
    # getter for: Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mNegativeButtonToken:I
    invoke-static {p1}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->access$16(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mNegativeButtonToken:I

    .line 57
    # getter for: Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mIsTitleIcon:Z
    invoke-static {p1}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->access$17(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mIsTitleIcon:Z

    .line 58
    # getter for: Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->mImageId:I
    invoke-static {p1}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->access$18(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mImageId:I

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;Lcom/android/nfc/utils/LNfcPopupInformation;)V
    .registers 3

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/nfc/utils/LNfcPopupInformation;-><init>(Lcom/android/nfc/utils/LNfcPopupInformation$Builder;)V

    return-void
.end method


# virtual methods
.method public IsCancelButtonIntentActivity()Z
    .registers 2

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mIsCancelButtonIntentActivity:Z

    return v0
.end method

.method public IsNegativeButtonIntentActivity()Z
    .registers 2

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mIsNegativeButtonIntentActivity:Z

    return v0
.end method

.method public IsPositiveButtonIntentActivity()Z
    .registers 2

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mIsPositiveButtonIntentActivity:Z

    return v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public getCancelButtonIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mCancelButtonIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getCancelButtonIntentUser()Landroid/os/UserHandle;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mCancelButtonIntentUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public getDefaultCheckbox()Z
    .registers 2

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mRequireDefalutCheckbox:Z

    return v0
.end method

.method public getDefaultCheckboxEnable()Z
    .registers 2

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mDefaultCheckboxEnable:Z

    return v0
.end method

.method public getImageId()I
    .registers 2

    .prologue
    .line 134
    iget v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mImageId:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage2()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mMessage2:Ljava/lang/String;

    return-object v0
.end method

.method public getNegativeButtonIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mNegativeButtonIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getNegativeButtonIntentUser()Landroid/os/UserHandle;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mNegativeButtonIntentUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public getNegativeButtonToken()I
    .registers 2

    .prologue
    .line 126
    iget v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mNegativeButtonToken:I

    return v0
.end method

.method public getPositiveButtonIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mPositiveButtonIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getPositiveButtonIntentUser()Landroid/os/UserHandle;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mPositiveButtonIntentUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public getPositiveButtonToken()I
    .registers 2

    .prologue
    .line 122
    iget v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mPositiveButtonToken:I

    return v0
.end method

.method public getSelectPopup()Z
    .registers 2

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mIsSelectPopup:Z

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isTitleIconEnable()Z
    .registers 2

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mIsTitleIcon:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "toString : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", positive : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mPositiveButtonIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", negative : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mNegativeButtonIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 150
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_91

    .line 151
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    :goto_f
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mMessage2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mPositiveButtonIntent:Landroid/content/Intent;

    if-eqz v0, :cond_96

    .line 160
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mPositiveButtonIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 162
    new-array v0, v3, [Z

    iget-boolean v1, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mIsPositiveButtonIntentActivity:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 163
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mPositiveButtonIntentUser:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 168
    :goto_33
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mNegativeButtonIntent:Landroid/content/Intent;

    if-eqz v0, :cond_9a

    .line 169
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mNegativeButtonIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 171
    new-array v0, v3, [Z

    iget-boolean v1, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mIsNegativeButtonIntentActivity:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 172
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mNegativeButtonIntentUser:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 177
    :goto_4d
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mCancelButtonIntent:Landroid/content/Intent;

    if-eqz v0, :cond_9e

    .line 178
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mCancelButtonIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 180
    new-array v0, v3, [Z

    iget-boolean v1, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mIsCancelButtonIntentActivity:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 181
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mCancelButtonIntentUser:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 186
    :goto_67
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    new-array v0, v4, [Z

    iget-boolean v1, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mIsSelectPopup:Z

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mRequireDefalutCheckbox:Z

    aput-boolean v1, v0, v3

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mDefaultCheckboxEnable:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mIsTitleIcon:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 188
    iget v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mPositiveButtonToken:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mNegativeButtonToken:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget v0, p0, Lcom/android/nfc/utils/LNfcPopupInformation;->mImageId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    return-void

    .line 154
    :cond_91
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_f

    .line 165
    :cond_96
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_33

    .line 174
    :cond_9a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4d

    .line 183
    :cond_9e
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_67
.end method
