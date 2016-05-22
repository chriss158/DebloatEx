.class Lcom/android/nfc/NfcDispatcher;
.super Ljava/lang/Object;
.source "NfcDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    }
.end annotation


# static fields
.field protected static final DBG:Z

.field static final DISPATCH_FAIL:I = 0x2

.field static final DISPATCH_SUCCESS:I = 0x1

.field static final DISPATCH_UNLOCK:I = 0x3

.field private static final TAG:Ljava/lang/String; = "NfcDispatcher"


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field protected final mContext:Landroid/content/Context;

.field protected final mDeviceSupportsBluetooth:Z

.field protected final mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

.field private final mIActivityManager:Landroid/app/IActivityManager;

.field private final mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

.field private mOverrideFilters:[Landroid/content/IntentFilter;

.field private mOverrideIntent:Landroid/app/PendingIntent;

.field private mOverrideTechLists:[[Ljava/lang/String;

.field private final mProvisioningMimes:[Ljava/lang/String;

.field private mProvisioningOnly:Z

.field private final mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

.field private final mTechListFilters:Lcom/android/nfc/RegisteredComponentCache;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 65
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    .line 70
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser;Z)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handoverDataParser"    # Lcom/android/nfc/handover/HandoverDataParser;
    .param p3, "provisionOnly"    # Z

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    .line 92
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mIActivityManager:Landroid/app/IActivityManager;

    .line 93
    new-instance v1, Lcom/android/nfc/RegisteredComponentCache;

    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    .line 94
    const-string v3, "android.nfc.action.TECH_DISCOVERED"

    const-string v4, "android.nfc.action.TECH_DISCOVERED"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/nfc/RegisteredComponentCache;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iput-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mTechListFilters:Lcom/android/nfc/RegisteredComponentCache;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mContentResolver:Landroid/content/ContentResolver;

    .line 96
    iput-object p2, p0, Lcom/android/nfc/NfcDispatcher;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    .line 97
    new-instance v1, Lcom/android/nfc/ScreenStateHelper;

    invoke-direct {v1, p1}, Lcom/android/nfc/ScreenStateHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    .line 98
    invoke-static {}, Lcom/android/nfc/NfcUnlockManager;->getInstance()Lcom/android/nfc/NfcUnlockManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    .line 99
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_4a

    const/4 v1, 0x1

    :goto_34
    iput-boolean v1, p0, Lcom/android/nfc/NfcDispatcher;->mDeviceSupportsBluetooth:Z

    .line 101
    monitor-enter p0

    .line 102
    :try_start_37
    iput-boolean p3, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningOnly:Z

    .line 101
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_4c

    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "provisionMimes":[Ljava/lang/String;
    if-eqz p3, :cond_47

    .line 108
    :try_start_3d
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 109
    const/high16 v2, 0x7f070000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
    :try_end_46
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3d .. :try_end_46} :catch_4f

    move-result-object v0

    .line 114
    :cond_47
    :goto_47
    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningMimes:[Ljava/lang/String;

    .line 115
    return-void

    .line 99
    .end local v0    # "provisionMimes":[Ljava/lang/String;
    :cond_4a
    const/4 v1, 0x0

    goto :goto_34

    .line 101
    :catchall_4c
    move-exception v1

    :try_start_4d
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v1

    .line 111
    .restart local v0    # "provisionMimes":[Ljava/lang/String;
    :catch_4f
    move-exception v1

    const/4 v0, 0x0

    goto :goto_47
.end method

.method static checkForAar(Landroid/nfc/NdefRecord;)Ljava/lang/String;
    .registers 4
    .param p0, "record"    # Landroid/nfc/NdefRecord;

    .prologue
    .line 643
    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1f

    .line 644
    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v0

    sget-object v1, Landroid/nfc/NdefRecord;->RTD_ANDROID_APP:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 645
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 647
    :goto_1e
    return-object v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method private decodeNfcBarcodeUri(Landroid/nfc/tech/NfcBarcode;)Landroid/nfc/NdefMessage;
    .registers 12
    .param p1, "nfcBarcode"    # Landroid/nfc/tech/NfcBarcode;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 349
    .line 354
    const/4 v1, 0x0

    .line 355
    .local v1, "message":Landroid/nfc/NdefMessage;
    invoke-virtual {p1}, Landroid/nfc/tech/NfcBarcode;->getTag()Landroid/nfc/Tag;

    move-result-object v5

    invoke-virtual {v5}, Landroid/nfc/Tag;->getId()[B

    move-result-object v3

    .line 357
    .local v3, "tagId":[B
    array-length v5, v3

    if-lt v5, v9, :cond_3d

    .line 358
    aget-byte v5, v3, v7

    if-eq v5, v7, :cond_21

    aget-byte v5, v3, v7

    const/4 v6, 0x2

    if-eq v5, v6, :cond_21

    .line 359
    aget-byte v5, v3, v7

    const/4 v6, 0x3

    if-eq v5, v6, :cond_21

    aget-byte v5, v3, v7

    if-ne v5, v9, :cond_3d

    .line 364
    :cond_21
    const/4 v0, 0x2

    .line 365
    .local v0, "end":I
    :goto_22
    array-length v5, v3

    add-int/lit8 v5, v5, -0x2

    if-lt v0, v5, :cond_3e

    .line 370
    :cond_27
    add-int/lit8 v5, v0, -0x1

    new-array v2, v5, [B

    .line 371
    .local v2, "payload":[B
    array-length v5, v2

    invoke-static {v3, v7, v2, v8, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 372
    new-instance v4, Landroid/nfc/NdefRecord;

    .line 373
    sget-object v5, Landroid/nfc/NdefRecord;->RTD_URI:[B

    .line 372
    invoke-direct {v4, v7, v5, v3, v2}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 374
    .local v4, "uriRecord":Landroid/nfc/NdefRecord;
    new-instance v1, Landroid/nfc/NdefMessage;

    .end local v1    # "message":Landroid/nfc/NdefMessage;
    new-array v5, v8, [Landroid/nfc/NdefRecord;

    invoke-direct {v1, v4, v5}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    .line 376
    .end local v0    # "end":I
    .end local v2    # "payload":[B
    .end local v4    # "uriRecord":Landroid/nfc/NdefRecord;
    .restart local v1    # "message":Landroid/nfc/NdefMessage;
    :cond_3d
    return-object v1

    .line 366
    .restart local v0    # "end":I
    :cond_3e
    aget-byte v5, v3, v0

    const/4 v6, -0x2

    if-eq v5, v6, :cond_27

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_22
.end method

.method static extractAarPackages(Landroid/nfc/NdefMessage;)Ljava/util/List;
    .registers 7
    .param p0, "message"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/nfc/NdefMessage;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 527
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 528
    .local v0, "aarPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_b
    if-lt v3, v5, :cond_e

    .line 534
    return-object v0

    .line 528
    :cond_e
    aget-object v2, v4, v3

    .line 529
    .local v2, "record":Landroid/nfc/NdefRecord;
    invoke-static {v2}, Lcom/android/nfc/NfcDispatcher;->checkForAar(Landroid/nfc/NdefRecord;)Ljava/lang/String;

    move-result-object v1

    .line 530
    .local v1, "pkg":Ljava/lang/String;
    if-eqz v1, :cond_19

    .line 531
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_b
.end method

.method static getAppSearchIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 655
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 656
    .local v0, "market":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "market://details?id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 657
    return-object v0
.end method

.method private handleNfcUnlock(Landroid/nfc/Tag;)Z
    .registers 3
    .param p1, "tag"    # Landroid/nfc/Tag;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcUnlockManager;->tryUnlock(Landroid/nfc/Tag;)Z

    move-result v0

    return v0
.end method

.method static isComponentEnabled(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Z
    .registers 7
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 661
    const/4 v1, 0x0

    .line 662
    .local v1, "enabled":Z
    new-instance v0, Landroid/content/ComponentName;

    .line 663
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 662
    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    .local v0, "compname":Landroid/content/ComponentName;
    const/4 v2, 0x0

    :try_start_f
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_12} :catch_2d

    move-result-object v2

    if-eqz v2, :cond_16

    .line 669
    const/4 v1, 0x1

    .line 674
    :cond_16
    :goto_16
    if-nez v1, :cond_2c

    .line 675
    const-string v2, "NfcDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Component not enabled: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_2c
    return v1

    .line 672
    :catch_2d
    move-exception v2

    const/4 v1, 0x0

    goto :goto_16
.end method


# virtual methods
.method protected alwaysLockScreenPolling()Z
    .registers 2

    .prologue
    .line 690
    const/4 v0, 0x0

    return v0
.end method

.method protected applyPopupDialogScenario(Lcom/android/nfc/NfcDispatcher$DispatchInfo;)Z
    .registers 3
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;

    .prologue
    .line 705
    const/4 v0, 0x0

    return v0
.end method

.method protected checkEmptyTag(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;)Z
    .registers 4
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .param p2, "tag"    # Landroid/nfc/Tag;

    .prologue
    .line 693
    const/4 v0, 0x0

    return v0
.end method

.method protected checkSMSTag(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Ljava/util/ArrayList;)Z
    .registers 4
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
    .line 696
    .local p2, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected checkTEXTTag(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Ljava/util/ArrayList;)Z
    .registers 4
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
    .line 699
    .local p2, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected checkValidMessageType(Landroid/nfc/NdefMessage;)Z
    .registers 3
    .param p1, "message"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 702
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized disableProvisioningMode()V
    .registers 2

    .prologue
    .line 126
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningOnly:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 127
    monitor-exit p0

    return-void

    .line 126
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dispatchTag(Landroid/nfc/Tag;)I
    .registers 14
    .param p1, "tag"    # Landroid/nfc/Tag;

    .prologue
    .line 235
    monitor-enter p0

    .line 236
    :try_start_1
    iget-object v5, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideFilters:[Landroid/content/IntentFilter;

    .line 237
    .local v5, "overrideFilters":[Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideIntent:Landroid/app/PendingIntent;

    .line 238
    .local v4, "overrideIntent":Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideTechLists:[[Ljava/lang/String;

    .line 239
    .local v6, "overrideTechLists":[[Ljava/lang/String;
    iget-boolean v9, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningOnly:Z

    .line 235
    .local v9, "provisioningOnly":Z
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_24

    .line 242
    const/4 v10, 0x0

    .line 243
    .local v10, "screenUnlocked":Z
    if-nez v9, :cond_27

    .line 244
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    invoke-virtual {v0}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_27

    .line 245
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcDispatcher;->handleNfcUnlock(Landroid/nfc/Tag;)Z

    move-result v10

    .line 246
    if-nez v10, :cond_27

    invoke-virtual {p0}, Lcom/android/nfc/NfcDispatcher;->alwaysLockScreenPolling()Z

    move-result v0

    if-nez v0, :cond_27

    .line 247
    const/4 v0, 0x2

    .line 309
    :goto_23
    return v0

    .line 235
    .end local v4    # "overrideIntent":Landroid/app/PendingIntent;
    .end local v5    # "overrideFilters":[Landroid/content/IntentFilter;
    .end local v6    # "overrideTechLists":[[Ljava/lang/String;
    .end local v9    # "provisioningOnly":Z
    .end local v10    # "screenUnlocked":Z
    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0

    .line 251
    .restart local v4    # "overrideIntent":Landroid/app/PendingIntent;
    .restart local v5    # "overrideFilters":[Landroid/content/IntentFilter;
    .restart local v6    # "overrideTechLists":[[Ljava/lang/String;
    .restart local v9    # "provisioningOnly":Z
    .restart local v10    # "screenUnlocked":Z
    :cond_27
    const/4 v3, 0x0

    .line 252
    .local v3, "message":Landroid/nfc/NdefMessage;
    invoke-static {p1}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v7

    .line 253
    .local v7, "ndef":Landroid/nfc/tech/Ndef;
    if-eqz v7, :cond_6e

    .line 254
    invoke-virtual {v7}, Landroid/nfc/tech/Ndef;->getCachedNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v3

    .line 262
    :cond_32
    :goto_32
    sget-boolean v0, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v0, :cond_58

    const-string v0, "NfcDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v11, "dispatch tag: "

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/nfc/Tag;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, " message: "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_58
    new-instance v1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;

    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, p1, v3}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;-><init>(Landroid/content/Context;Landroid/nfc/Tag;Landroid/nfc/NdefMessage;)V

    .line 266
    .local v1, "dispatch":Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    invoke-virtual {p0}, Lcom/android/nfc/NfcDispatcher;->resumeAppSwitches()V

    move-object v0, p0

    move-object v2, p1

    .line 268
    invoke-virtual/range {v0 .. v6}, Lcom/android/nfc/NfcDispatcher;->tryOverrides(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;Landroid/nfc/NdefMessage;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)Z

    move-result v0

    .line 269
    if-eqz v0, :cond_82

    .line 270
    if-eqz v10, :cond_80

    const/4 v0, 0x3

    goto :goto_23

    .line 256
    .end local v1    # "dispatch":Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    :cond_6e
    invoke-static {p1}, Landroid/nfc/tech/NfcBarcode;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcBarcode;

    move-result-object v8

    .line 257
    .local v8, "nfcBarcode":Landroid/nfc/tech/NfcBarcode;
    if-eqz v8, :cond_32

    invoke-virtual {v8}, Landroid/nfc/tech/NfcBarcode;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_32

    .line 258
    invoke-direct {p0, v8}, Lcom/android/nfc/NfcDispatcher;->decodeNfcBarcodeUri(Landroid/nfc/tech/NfcBarcode;)Landroid/nfc/NdefMessage;

    move-result-object v3

    goto :goto_32

    .line 270
    .end local v8    # "nfcBarcode":Landroid/nfc/tech/NfcBarcode;
    .restart local v1    # "dispatch":Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    :cond_80
    const/4 v0, 0x1

    goto :goto_23

    .line 273
    :cond_82
    invoke-virtual {p0, v3}, Lcom/android/nfc/NfcDispatcher;->tryPeripheralHandover(Landroid/nfc/NdefMessage;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 274
    sget-boolean v0, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v0, :cond_93

    const-string v0, "NfcDispatcher"

    const-string v2, "matched BT HANDOVER"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_93
    if-eqz v10, :cond_97

    const/4 v0, 0x3

    goto :goto_23

    :cond_97
    const/4 v0, 0x1

    goto :goto_23

    .line 278
    :cond_99
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v7, v0}, Lcom/android/nfc/NfcWifiProtectedSetup;->tryNfcWifiSetup(Landroid/nfc/tech/Ndef;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 279
    sget-boolean v0, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v0, :cond_ac

    const-string v0, "NfcDispatcher"

    const-string v2, "matched NFC WPS TOKEN"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_ac
    if-eqz v10, :cond_b1

    const/4 v0, 0x3

    goto/16 :goto_23

    :cond_b1
    const/4 v0, 0x1

    goto/16 :goto_23

    .line 283
    :cond_b4
    invoke-virtual {p0, v1, v3, v9}, Lcom/android/nfc/NfcDispatcher;->tryNdef(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/NdefMessage;Z)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 284
    if-eqz v10, :cond_bf

    const/4 v0, 0x3

    goto/16 :goto_23

    :cond_bf
    const/4 v0, 0x1

    goto/16 :goto_23

    .line 287
    :cond_c2
    if-eqz v10, :cond_cd

    invoke-virtual {p0}, Lcom/android/nfc/NfcDispatcher;->alwaysLockScreenPolling()Z

    move-result v0

    if-nez v0, :cond_cd

    .line 289
    const/4 v0, 0x3

    goto/16 :goto_23

    .line 292
    :cond_cd
    if-eqz v9, :cond_d2

    .line 294
    const/4 v0, 0x2

    goto/16 :goto_23

    .line 298
    :cond_d2
    invoke-virtual {p0, v1, p1}, Lcom/android/nfc/NfcDispatcher;->tryTech(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;)Z

    move-result v0

    if-eqz v0, :cond_db

    .line 299
    const/4 v0, 0x1

    goto/16 :goto_23

    .line 302
    :cond_db
    invoke-virtual {v1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setTagIntent()Landroid/content/Intent;

    .line 303
    invoke-virtual {v1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 304
    sget-boolean v0, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v0, :cond_ef

    const-string v0, "NfcDispatcher"

    const-string v2, "matched TAG"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_ef
    const/4 v0, 0x1

    goto/16 :goto_23

    .line 308
    :cond_f2
    sget-boolean v0, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v0, :cond_fd

    const-string v0, "NfcDispatcher"

    const-string v2, "no match"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_fd
    const/4 v0, 0x2

    goto/16 :goto_23
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 681
    monitor-enter p0

    .line 682
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mOverrideIntent="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mOverrideFilters="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideFilters:[Landroid/content/IntentFilter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mOverrideTechLists="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideTechLists:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 681
    monitor-exit p0

    .line 686
    return-void

    .line 681
    :catchall_3f
    move-exception v0

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_3f

    throw v0
.end method

.method filterMatch([Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 8
    .param p1, "tagTechs"    # [Ljava/lang/String;
    .param p2, "filterTechs"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 632
    if-eqz p2, :cond_6

    array-length v2, p2

    if-nez v2, :cond_7

    .line 639
    :cond_6
    :goto_6
    return v1

    .line 634
    :cond_7
    array-length v3, p2

    move v2, v1

    :goto_9
    if-lt v2, v3, :cond_d

    .line 639
    const/4 v1, 0x1

    goto :goto_6

    .line 634
    :cond_d
    aget-object v0, p2, v2

    .line 635
    .local v0, "tech":Ljava/lang/String;
    invoke-static {p1, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_6

    .line 634
    add-int/lit8 v2, v2, 0x1

    goto :goto_9
.end method

.method isFilterMatch(Landroid/content/Intent;[Landroid/content/IntentFilter;Z)Z
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "filters"    # [Landroid/content/IntentFilter;
    .param p3, "hasTechFilter"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 428
    if-eqz p2, :cond_19

    .line 429
    array-length v4, p2

    move v3, v2

    :goto_6
    if-lt v3, v4, :cond_a

    :cond_8
    move v1, v2

    .line 437
    :cond_9
    :goto_9
    return v1

    .line 429
    :cond_a
    aget-object v0, p2, v3

    .line 430
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/nfc/NfcDispatcher;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "NfcDispatcher"

    invoke-virtual {v0, v5, p1, v2, v6}, Landroid/content/IntentFilter;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v5

    if-gez v5, :cond_9

    .line 429
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 434
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_19
    if-nez p3, :cond_8

    goto :goto_9
.end method

.method isTechMatch(Landroid/nfc/Tag;[[Ljava/lang/String;)Z
    .registers 9
    .param p1, "tag"    # Landroid/nfc/Tag;
    .param p2, "techLists"    # [[Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 441
    if-nez p2, :cond_4

    .line 452
    :cond_3
    :goto_3
    return v2

    .line 445
    :cond_4
    invoke-virtual {p1}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object v1

    .line 446
    .local v1, "tagTechs":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 447
    array-length v4, p2

    move v3, v2

    :goto_d
    if-ge v3, v4, :cond_3

    aget-object v0, p2, v3

    .line 448
    .local v0, "filterTechs":[Ljava/lang/String;
    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/NfcDispatcher;->filterMatch([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 449
    const/4 v2, 0x1

    goto :goto_3

    .line 447
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_d
.end method

.method resumeAppSwitches()V
    .registers 2

    .prologue
    .line 626
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mIActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 628
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public declared-synchronized setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V
    .registers 6
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "filters"    # [Landroid/content/IntentFilter;
    .param p3, "techLists"    # [[Ljava/lang/String;

    .prologue
    .line 119
    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "NfcDispatcher"

    const-string v1, "Set Foreground Dispatch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_c
    iput-object p1, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideIntent:Landroid/app/PendingIntent;

    .line 121
    iput-object p2, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideFilters:[Landroid/content/IntentFilter;

    .line 122
    iput-object p3, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideTechLists:[[Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 123
    monitor-exit p0

    return-void

    .line 119
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method tryNdef(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/NdefMessage;Z)Z
    .registers 15
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .param p2, "message"    # Landroid/nfc/NdefMessage;
    .param p3, "provisioningOnly"    # Z

    .prologue
    .line 456
    if-nez p2, :cond_4

    .line 457
    const/4 v8, 0x0

    .line 523
    :goto_3
    return v8

    .line 459
    :cond_4
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setNdefIntent()Landroid/content/Intent;

    move-result-object v4

    .line 462
    .local v4, "intent":Landroid/content/Intent;
    if-nez v4, :cond_c

    const/4 v8, 0x0

    goto :goto_3

    .line 464
    :cond_c
    if-eqz p3, :cond_2b

    .line 465
    iget-object v8, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningMimes:[Ljava/lang/String;

    if-eqz v8, :cond_22

    .line 466
    iget-object v8, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningMimes:[Ljava/lang/String;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2b

    .line 467
    :cond_22
    const-string v8, "NfcDispatcher"

    const-string v9, "Dropping NFC intent in provisioning mode."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/4 v8, 0x0

    goto :goto_3

    .line 473
    :cond_2b
    invoke-static {p2}, Lcom/android/nfc/NfcDispatcher;->extractAarPackages(Landroid/nfc/NdefMessage;)Ljava/util/List;

    move-result-object v0

    .line 474
    .local v0, "aarPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_33
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_75

    .line 483
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_b9

    .line 484
    const/4 v8, 0x0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 487
    .local v3, "firstPackage":Ljava/lang/String;
    :try_start_46
    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    invoke-direct {v2, v8}, Landroid/os/UserHandle;-><init>(I)V

    .line 488
    .local v2, "currentUser":Landroid/os/UserHandle;
    iget-object v8, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-string v9, "android"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v8

    .line 489
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_5b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_46 .. :try_end_5b} :catch_94

    move-result-object v7

    .line 494
    .local v7, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v7, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 495
    .local v1, "appLaunchIntent":Landroid/content/Intent;
    if-eqz v1, :cond_9f

    invoke-virtual {p1, v1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity(Landroid/content/Intent;)Z

    move-result v8

    if-eqz v8, :cond_9f

    .line 496
    sget-boolean v8, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v8, :cond_73

    const-string v8, "NfcDispatcher"

    const-string v9, "matched AAR to application launch"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_73
    const/4 v8, 0x1

    goto :goto_3

    .line 474
    .end local v1    # "appLaunchIntent":Landroid/content/Intent;
    .end local v2    # "currentUser":Landroid/os/UserHandle;
    .end local v3    # "firstPackage":Ljava/lang/String;
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    :cond_75
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 475
    .local v6, "pkg":Ljava/lang/String;
    iget-object v9, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v9, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    move-result v9

    if-eqz v9, :cond_33

    .line 477
    sget-boolean v8, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v8, :cond_91

    const-string v8, "NfcDispatcher"

    const-string v9, "matched AAR to NDEF"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_91
    const/4 v8, 0x1

    goto/16 :goto_3

    .line 491
    .end local v6    # "pkg":Ljava/lang/String;
    .restart local v3    # "firstPackage":Ljava/lang/String;
    :catch_94
    move-exception v8

    const-string v8, "NfcDispatcher"

    const-string v9, "Could not create user package context"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 500
    .restart local v1    # "appLaunchIntent":Landroid/content/Intent;
    .restart local v2    # "currentUser":Landroid/os/UserHandle;
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    :cond_9f
    invoke-static {v3}, Lcom/android/nfc/NfcDispatcher;->getAppSearchIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 501
    .local v5, "marketIntent":Landroid/content/Intent;
    if-eqz v5, :cond_b9

    invoke-virtual {p1, v5}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity(Landroid/content/Intent;)Z

    move-result v8

    if-eqz v8, :cond_b9

    .line 502
    sget-boolean v8, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v8, :cond_b6

    const-string v8, "NfcDispatcher"

    const-string v9, "matched AAR to market launch"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_b6
    const/4 v8, 0x1

    goto/16 :goto_3

    .line 508
    .end local v1    # "appLaunchIntent":Landroid/content/Intent;
    .end local v2    # "currentUser":Landroid/os/UserHandle;
    .end local v3    # "firstPackage":Ljava/lang/String;
    .end local v5    # "marketIntent":Landroid/content/Intent;
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    :cond_b9
    invoke-virtual {p0, p2}, Lcom/android/nfc/NfcDispatcher;->checkValidMessageType(Landroid/nfc/NdefMessage;)Z

    move-result v8

    if-nez v8, :cond_c2

    .line 509
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 511
    :cond_c2
    invoke-virtual {p0, p1}, Lcom/android/nfc/NfcDispatcher;->applyPopupDialogScenario(Lcom/android/nfc/NfcDispatcher$DispatchInfo;)Z

    move-result v8

    if-eqz v8, :cond_cb

    .line 512
    const/4 v8, 0x1

    goto/16 :goto_3

    .line 517
    :cond_cb
    iget-object v8, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    move-result v8

    if-eqz v8, :cond_e5

    .line 519
    sget-boolean v8, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v8, :cond_e2

    const-string v8, "NfcDispatcher"

    const-string v9, "matched NDEF"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_e2
    const/4 v8, 0x1

    goto/16 :goto_3

    .line 523
    :cond_e5
    const/4 v8, 0x0

    goto/16 :goto_3
.end method

.method tryOverrides(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;Landroid/nfc/NdefMessage;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)Z
    .registers 12
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .param p2, "tag"    # Landroid/nfc/Tag;
    .param p3, "message"    # Landroid/nfc/NdefMessage;
    .param p4, "overrideIntent"    # Landroid/app/PendingIntent;
    .param p5, "overrideFilters"    # [Landroid/content/IntentFilter;
    .param p6, "overrideTechLists"    # [[Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 381
    if-nez p4, :cond_5

    .line 424
    :cond_4
    :goto_4
    return v3

    .line 387
    :cond_5
    if-eqz p3, :cond_2b

    .line 388
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setNdefIntent()Landroid/content/Intent;

    move-result-object v0

    .line 389
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_2b

    .line 390
    if-eqz p6, :cond_29

    move v1, v2

    :goto_10
    invoke-virtual {p0, v0, p5, v1}, Lcom/android/nfc/NfcDispatcher;->isFilterMatch(Landroid/content/Intent;[Landroid/content/IntentFilter;Z)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 392
    :try_start_16
    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const/4 v4, -0x1

    invoke-virtual {p4, v1, v4, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 393
    sget-boolean v1, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v1, :cond_27

    const-string v1, "NfcDispatcher"

    const-string v4, "matched NDEF override"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_16 .. :try_end_27} :catch_6e

    :cond_27
    move v3, v2

    .line 394
    goto :goto_4

    :cond_29
    move v1, v3

    .line 390
    goto :goto_10

    .line 402
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2b
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setTechIntent()Landroid/content/Intent;

    move-result-object v0

    .line 403
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, p2, p6}, Lcom/android/nfc/NfcDispatcher;->isTechMatch(Landroid/nfc/Tag;[[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 405
    :try_start_35
    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const/4 v4, -0x1

    invoke-virtual {p4, v1, v4, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 406
    sget-boolean v1, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v1, :cond_46

    const-string v1, "NfcDispatcher"

    const-string v4, "matched TECH override"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_35 .. :try_end_46} :catch_6c

    :cond_46
    move v3, v2

    .line 407
    goto :goto_4

    .line 414
    :cond_48
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setTagIntent()Landroid/content/Intent;

    move-result-object v0

    .line 415
    if-eqz p6, :cond_68

    move v1, v2

    :goto_4f
    invoke-virtual {p0, v0, p5, v1}, Lcom/android/nfc/NfcDispatcher;->isFilterMatch(Landroid/content/Intent;[Landroid/content/IntentFilter;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 417
    :try_start_55
    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const/4 v4, -0x1

    invoke-virtual {p4, v1, v4, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 418
    sget-boolean v1, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v1, :cond_66

    const-string v1, "NfcDispatcher"

    const-string v4, "matched TAG override"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_55 .. :try_end_66} :catch_6a

    :cond_66
    move v3, v2

    .line 419
    goto :goto_4

    :cond_68
    move v1, v3

    .line 415
    goto :goto_4f

    .line 421
    :catch_6a
    move-exception v1

    goto :goto_4

    .line 409
    :catch_6c
    move-exception v1

    goto :goto_4

    .line 396
    :catch_6e
    move-exception v1

    goto :goto_4
.end method

.method public tryPeripheralHandover(Landroid/nfc/NdefMessage;)Z
    .registers 8
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v2, 0x0

    .line 599
    if-eqz p1, :cond_7

    iget-boolean v3, p0, Lcom/android/nfc/NfcDispatcher;->mDeviceSupportsBluetooth:Z

    if-nez v3, :cond_8

    .line 612
    :cond_7
    :goto_7
    return v2

    .line 601
    :cond_8
    sget-boolean v3, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v3, :cond_24

    const-string v3, "NfcDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "tryHandover(): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_24
    iget-object v3, p0, Lcom/android/nfc/NfcDispatcher;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v3, p1}, Lcom/android/nfc/handover/HandoverDataParser;->parseBluetooth(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v0

    .line 604
    .local v0, "handover":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    if-eqz v0, :cond_7

    iget-boolean v3, v0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    if-eqz v3, :cond_7

    .line 606
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/nfc/handover/PeripheralHandoverService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 607
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "device"

    iget-object v3, v0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 608
    const-string v2, "headsetname"

    iget-object v3, v0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 609
    const-string v2, "transporttype"

    iget v3, v0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->transport:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 610
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 612
    const/4 v2, 0x1

    goto :goto_7
.end method

.method tryTech(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;)Z
    .registers 15
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .param p2, "tag"    # Landroid/nfc/Tag;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 538
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setTechIntent()Landroid/content/Intent;

    .line 540
    invoke-virtual {p2}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object v6

    .line 541
    .local v6, "tagTechs":[Ljava/lang/String;
    invoke-static {v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 544
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 545
    .local v3, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v9, p0, Lcom/android/nfc/NfcDispatcher;->mTechListFilters:Lcom/android/nfc/RegisteredComponentCache;

    invoke-virtual {v9}, Lcom/android/nfc/RegisteredComponentCache;->getComponents()Ljava/util/ArrayList;

    move-result-object v5

    .line 549
    .local v5, "registered":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;>;"
    :try_start_17
    new-instance v0, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    invoke-direct {v0, v9}, Landroid/os/UserHandle;-><init>(I)V

    .line 550
    .local v0, "currentUser":Landroid/os/UserHandle;
    iget-object v9, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-string v10, "android"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v9

    .line 551
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_2c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_2c} :catch_4a

    move-result-object v4

    .line 557
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_31
    :goto_31
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_54

    .line 569
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/NfcDispatcher;->checkEmptyTag(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;)Z

    move-result v9

    if-nez v9, :cond_49

    invoke-virtual {p0, p1, v3}, Lcom/android/nfc/NfcDispatcher;->checkSMSTag(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Ljava/util/ArrayList;)Z

    move-result v9

    if-nez v9, :cond_49

    invoke-virtual {p0, p1, v3}, Lcom/android/nfc/NfcDispatcher;->checkTEXTTag(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Ljava/util/ArrayList;)Z

    move-result v9

    if-eqz v9, :cond_78

    .line 595
    .end local v0    # "currentUser":Landroid/os/UserHandle;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_49
    :goto_49
    return v7

    .line 553
    :catch_4a
    move-exception v7

    const-string v7, "NfcDispatcher"

    const-string v9, "Could not create user package context"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 554
    goto :goto_49

    .line 557
    .restart local v0    # "currentUser":Landroid/os/UserHandle;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_54
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;

    .line 559
    .local v1, "info":Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    iget-object v10, v1, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->techs:[Ljava/lang/String;

    invoke-virtual {p0, v6, v10}, Lcom/android/nfc/NfcDispatcher;->filterMatch([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_31

    .line 560
    iget-object v10, v1, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-static {v4, v10}, Lcom/android/nfc/NfcDispatcher;->isComponentEnabled(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Z

    move-result v10

    if-eqz v10, :cond_31

    .line 562
    iget-object v10, v1, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_31

    .line 563
    iget-object v10, v1, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 572
    .end local v1    # "info":Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    :cond_78
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setTechIntent()Landroid/content/Intent;

    .line 575
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v7, :cond_ae

    .line 577
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 578
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v9, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    iget-object v10, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 579
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    move-result v9

    if-eqz v9, :cond_a6

    .line 580
    sget-boolean v8, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v8, :cond_49

    const-string v8, "NfcDispatcher"

    const-string v9, "matched single TECH"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 583
    :cond_a6
    iget-object v7, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :cond_ac
    move v7, v8

    .line 595
    goto :goto_49

    .line 584
    :cond_ae
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v7, :cond_ac

    .line 586
    new-instance v2, Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-class v10, Lcom/android/nfc/TechListChooserActivity;

    invoke-direct {v2, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 587
    .local v2, "intent":Landroid/content/Intent;
    const-string v9, "android.intent.extra.INTENT"

    iget-object v10, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 588
    const-string v9, "rlist"

    invoke-virtual {v2, v9, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 590
    invoke-virtual {p1, v2}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity(Landroid/content/Intent;)Z

    move-result v9

    if-eqz v9, :cond_ac

    .line 591
    sget-boolean v8, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v8, :cond_49

    const-string v8, "NfcDispatcher"

    const-string v9, "matched multiple TECH"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_49
.end method
