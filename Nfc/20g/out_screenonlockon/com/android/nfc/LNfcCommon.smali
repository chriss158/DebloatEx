.class public Lcom/android/nfc/LNfcCommon;
.super Ljava/lang/Object;
.source "LNfcCommon.java"


# static fields
.field public static final ACTION_LOCKSCREEN_CREATE:Ljava/lang/String; = "com.lge.lockscreen.intent.action.LOCKSCREEN_CREATE"

.field public static final ACTION_RESET_SETTING:Ljava/lang/String; = "lge.settings.intent.action.RESET_SETTING"

.field public static final ACTION_SIM_CHANGED_INFO:Ljava/lang/String; = "com.lge.intent.action.SIM_CHANGED_INFO"

.field public static final BATTERY_CHANGED:Ljava/lang/String; = "com.lge.BATTERY_CHANGED"

.field static final CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

.field private static DBG:Z = false

.field public static final NFC_BEAMFINISH_INTENT_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final OPENMOBILEAPI_AC_INITIALIZED:Ljava/lang/String; = "org.simalliance.openmobileapi.service.security.AC_INITIALIZED"

.field public static final POWERSAVE_ACTIVATION_TO_OTHERS:Ljava/lang/String; = "com.android.settings.powersave.POWERSAVE_ACTIVATION_TO_OTHERS"

.field public static final SMARTCARD_AC_INITIALIZED:Ljava/lang/String; = "com.lge.smartcard.AC_INITIALIZED"

.field private static TAG:Ljava/lang/String; = null

.field public static final TEST_TRANSACTION_EVENT:Ljava/lang/String; = "com.lge.nfc.test.TRANSACTION_EVENT"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const-string v0, "LNfcCommon"

    sput-object v0, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    .line 38
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/LNfcCommon;->DBG:Z

    .line 50
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure;->getInstance()Lcom/lge/nfcconfig/NfcConfigure;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/LNfcCommon;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    .line 174
    new-instance v0, Lcom/android/nfc/LNfcCommon$1;

    invoke-direct {v0}, Lcom/android/nfc/LNfcCommon$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/LNfcCommon;->NFC_BEAMFINISH_INTENT_SET:Ljava/util/Set;

    .line 182
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addNfcService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    .line 72
    if-nez p0, :cond_a

    .line 73
    sget-object v1, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    const-string v2, "addNfcService name is null"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :goto_9
    return-void

    .line 76
    :cond_a
    sget-object v1, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "addNfcService("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :try_start_24
    invoke-static {p0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_76

    .line 81
    if-eqz p1, :cond_6e

    .line 82
    sget-object v1, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Registering "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Service!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {p0, p1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_49} :catch_4a

    goto :goto_9

    .line 90
    :catch_4a
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Registration Failed! : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 85
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_6e
    :try_start_6e
    sget-object v1, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    const-string v2, "Error : service is null!!!"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 88
    :cond_76
    sget-object v1, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Already registered! : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_90
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_90} :catch_4a

    goto/16 :goto_9
.end method

.method public static byteArray2String([BIILjava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "data"    # [B
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 54
    if-nez p0, :cond_4

    .line 55
    const/4 v2, 0x0

    .line 67
    :goto_3
    return-object v2

    .line 57
    :cond_4
    const/4 v2, -0x1

    if-ne p2, v2, :cond_a

    .line 58
    array-length v2, p0

    sub-int p2, v2, p1

    .line 61
    :cond_a
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 63
    .local v0, "buffer":Ljava/lang/StringBuffer;
    move v1, p1

    .local v1, "ind":I
    :goto_10
    add-int v2, p1, p2

    if-lt v1, v2, :cond_19

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 64
    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x100

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_10
.end method

.method public static isAllAutoTestMode()Z
    .registers 2

    .prologue
    .line 123
    const-string v0, "sys.allautotest.run"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isApplicationFeatureEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 98
    :try_start_1
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 99
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 100
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 102
    .local v4, "task":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v4, :cond_3c

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3c

    .line 103
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "pkgname":Ljava/lang/String;
    const/16 v5, 0x80

    .line 104
    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 106
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_33

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v5, :cond_35

    :cond_33
    move v5, v6

    .line 114
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v3    # "pkgname":Ljava/lang/String;
    .end local v4    # "task":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :goto_34
    return v5

    .line 109
    .restart local v0    # "activityManager":Landroid/app/ActivityManager;
    .restart local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v3    # "pkgname":Ljava/lang/String;
    .restart local v4    # "task":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_35
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_3a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_3a} :catch_3e

    move-result v5

    goto :goto_34

    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "pkgname":Ljava/lang/String;
    :cond_3c
    move v5, v6

    .line 111
    goto :goto_34

    .line 114
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v4    # "task":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :catch_3e
    move-exception v5

    move v5, v6

    goto :goto_34
.end method

.method public static isBeamUIFinishIntent(Ljava/lang/String;)Z
    .registers 2
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 185
    if-nez p0, :cond_4

    .line 186
    const/4 v0, 0x0

    .line 189
    :goto_3
    return v0

    :cond_4
    sget-object v0, Lcom/android/nfc/LNfcCommon;->NFC_BEAMFINISH_INTENT_SET:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public static isDefalutOffModel()Z
    .registers 2

    .prologue
    .line 325
    sget-object v0, Lcom/android/nfc/LNfcCommon;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mDefaultOnOffType:Ljava/lang/String;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 326
    const/4 v0, 0x1

    .line 328
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isFactoryMode()Z
    .registers 5

    .prologue
    .line 130
    const-string v2, "ro.factorytest"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "strFactoryMode":Ljava/lang/String;
    const-string v2, "sys.lge.pif"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "strPifMode":Ljava/lang/String;
    sget-object v2, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ro.factorytest="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sys.lge.pif="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 136
    const/4 v2, 0x1

    .line 139
    :goto_3f
    return v2

    :cond_40
    const/4 v2, 0x0

    goto :goto_3f
.end method

.method public static isFirstBooting()Z
    .registers 4

    .prologue
    .line 150
    sget-boolean v0, Lcom/android/nfc/LNfcCommon;->DBG:Z

    sget-object v1, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "persist.sys.first-mccmnc : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "persist.sys.first-mccmnc"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 151
    sget-boolean v0, Lcom/android/nfc/LNfcCommon;->DBG:Z

    sget-object v1, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "persist.sys.mccmnc-list : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "persist.sys.mccmnc-list"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v0, "2"

    const-string v1, "persist.radio.iccid-changed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 154
    sget-boolean v0, Lcom/android/nfc/LNfcCommon;->DBG:Z

    sget-object v1, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    const-string v2, "The device state is Factoryreset or First reboot"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 155
    const/4 v0, 0x1

    .line 160
    :goto_50
    return v0

    .line 158
    :cond_51
    sget-boolean v0, Lcom/android/nfc/LNfcCommon;->DBG:Z

    sget-object v1, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The device state is reboot :: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    const-string v3, "persist.radio.iccid-changed"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 160
    const/4 v0, 0x0

    goto :goto_50
.end method

.method public static isForeground(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "PackageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 308
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 312
    .local v1, "manager":Landroid/app/ActivityManager;
    invoke-virtual {v1, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 315
    .local v2, "task":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 318
    .local v0, "componentInfo":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    move v3, v4

    .line 321
    :goto_21
    return v3

    :cond_22
    move v3, v5

    goto :goto_21
.end method

.method public static isLockScreenStatus()Z
    .registers 4

    .prologue
    .line 145
    sget-boolean v0, Lcom/android/nfc/LNfcCommon;->DBG:Z

    sget-object v1, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "service.keyguard.status : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "service.keyguard.status"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v0, "service.keyguard.status"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x0

    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x1

    goto :goto_2d
.end method

.method public static isNotUserMode()Z
    .registers 2

    .prologue
    .line 119
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public static isProvisionState(Landroid/content/Context;)Z
    .registers 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 332
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 334
    .local v0, "mContentResolver":Landroid/content/ContentResolver;
    const-string v2, "device_provisioned"

    .line 333
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_e

    .line 335
    const/4 v1, 0x1

    .line 337
    :cond_e
    return v1
.end method

.method public static isSimChanged()Z
    .registers 4

    .prologue
    .line 165
    const-string v0, "1"

    const-string v1, "persist.radio.iccid-changed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 167
    sget-boolean v0, Lcom/android/nfc/LNfcCommon;->DBG:Z

    sget-object v1, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The device state is reboot :: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    const-string v3, "persist.radio.iccid-changed"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 167
    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 169
    const/4 v0, 0x1

    .line 171
    :goto_2b
    return v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method public static registerAccessControlIntent(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .registers 3
    .param p0, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 227
    sget-object v0, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    const-string v1, "registerAccessControlIntent vaild:intentfilter"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    if-nez p0, :cond_e

    .line 229
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 231
    .restart local p0    # "filter":Landroid/content/IntentFilter;
    :cond_e
    const-string v0, "org.simalliance.openmobileapi.service.security.AC_INITIALIZED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    const-string v0, "com.lge.smartcard.AC_INITIALIZED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    return-object p0
.end method

.method public static registerBeamUIFinishIntent(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .registers 5
    .param p0, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 193
    sget-object v2, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    const-string v3, "registerBeamUIFinishIntent vaild:intentfilter"

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    if-nez p0, :cond_e

    .line 195
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 197
    .restart local p0    # "filter":Landroid/content/IntentFilter;
    :cond_e
    sget-object v2, Lcom/android/nfc/LNfcCommon;->NFC_BEAMFINISH_INTENT_SET:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 198
    .local v1, "actions":[Ljava/lang/String;
    sget-object v2, Lcom/android/nfc/LNfcCommon;->NFC_BEAMFINISH_INTENT_SET:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "actions":[Ljava/lang/String;
    check-cast v1, [Ljava/lang/String;

    .line 199
    .restart local v1    # "actions":[Ljava/lang/String;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_20
    if-lt v2, v3, :cond_23

    .line 204
    return-object p0

    .line 199
    :cond_23
    aget-object v0, v1, v2

    .line 201
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_20
.end method

.method public static registerPhoneStateChangedIntent(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .registers 3
    .param p0, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 208
    sget-object v0, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    const-string v1, "registerPhoneStateChangedIntent vaild:intentfilter"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    if-nez p0, :cond_e

    .line 210
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 212
    .restart local p0    # "filter":Landroid/content/IntentFilter;
    :cond_e
    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    return-object p0
.end method

.method public static registerPowerSaveActivationToOthersIntent(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .registers 3
    .param p0, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 218
    sget-object v0, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    const-string v1, "registerPowerSaveActivationToOthersIntent vaild:intentfilter"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    if-nez p0, :cond_e

    .line 220
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 222
    .restart local p0    # "filter":Landroid/content/IntentFilter;
    :cond_e
    const-string v0, "com.android.settings.powersave.POWERSAVE_ACTIVATION_TO_OTHERS"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    return-object p0
.end method

.method public static registerResetSettingIntent(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .registers 3
    .param p0, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 288
    sget-object v0, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    const-string v1, "registerResetSettingIntent vaild:intentfilter"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    if-nez p0, :cond_e

    .line 290
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 292
    .restart local p0    # "filter":Landroid/content/IntentFilter;
    :cond_e
    const-string v0, "lge.settings.intent.action.RESET_SETTING"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    return-object p0
.end method

.method public static registerScreenLockIntent(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .registers 3
    .param p0, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 248
    sget-object v0, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    const-string v1, "registerScreenLockIntent vaild:intentfilter"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    if-nez p0, :cond_e

    .line 250
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 252
    .restart local p0    # "filter":Landroid/content/IntentFilter;
    :cond_e
    const-string v0, "com.lge.lockscreen.intent.action.LOCKSCREEN_CREATE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    return-object p0
.end method

.method public static registerSimChangedInfoIntent(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .registers 3
    .param p0, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 269
    sget-object v0, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    const-string v1, "registerSimChangedInfoIntent vaild:intentfilter"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    if-nez p0, :cond_e

    .line 271
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 273
    .restart local p0    # "filter":Landroid/content/IntentFilter;
    :cond_e
    const-string v0, "com.lge.intent.action.SIM_CHANGED_INFO"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    return-object p0
.end method

.method public static registerSimStateChangedIntent(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .registers 3
    .param p0, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 258
    sget-object v0, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    const-string v1, "registerSimStateChangedIntent vaild:intentfilter"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    if-nez p0, :cond_e

    .line 260
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 262
    .restart local p0    # "filter":Landroid/content/IntentFilter;
    :cond_e
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    const/16 v0, -0x3e8

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 265
    return-object p0
.end method

.method public static registerSmartCoverIntent(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .registers 3
    .param p0, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 297
    sget-object v0, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    const-string v1, "registerSmartCoverIntent vaild:intentfilter"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    if-nez p0, :cond_e

    .line 299
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 301
    .restart local p0    # "filter":Landroid/content/IntentFilter;
    :cond_e
    const-string v0, "com.lge.android.intent.action.ACCESSORY_COVER_EVENT"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 303
    return-object p0
.end method

.method public static registerTestTransactionEventIntent(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .registers 3
    .param p0, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 279
    sget-object v0, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    const-string v1, "registerTestTransactionEventIntent vaild:intentfilter"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    if-nez p0, :cond_e

    .line 281
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 283
    .restart local p0    # "filter":Landroid/content/IntentFilter;
    :cond_e
    const-string v0, "com.lge.nfc.test.TRANSACTION_EVENT"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    return-object p0
.end method

.method public static registerWirelessChargeIntent(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .registers 3
    .param p0, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 237
    sget-object v0, Lcom/android/nfc/LNfcCommon;->TAG:Ljava/lang/String;

    const-string v1, "registerWirelessChargeIntent vaild:intentfilter"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    if-nez p0, :cond_e

    .line 239
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 241
    .restart local p0    # "filter":Landroid/content/IntentFilter;
    :cond_e
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    const-string v0, "com.lge.BATTERY_CHANGED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    return-object p0
.end method
