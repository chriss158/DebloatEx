.class public Lcom/android/nfc/NfceeAccessControl;
.super Ljava/lang/Object;
.source "NfceeAccessControl.java"


# static fields
.field static final DBG:Z

.field public static final NFCEE_ACCESS_PATH:Ljava/lang/String; = "/etc/nfcee_access.xml"

.field static final TAG:Ljava/lang/String; = "NfceeAccess"


# instance fields
.field final mContext:Landroid/content/Context;

.field final mDebugPrintSignature:Z

.field final mNfceeAccess:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/pm/Signature;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mUidCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/NfceeAccessControl;->DBG:Z

    .line 47
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/nfc/NfceeAccessControl;->mContext:Landroid/content/Context;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfceeAccessControl;->mNfceeAccess:Ljava/util/HashMap;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfceeAccessControl;->mUidCache:Ljava/util/HashMap;

    .line 71
    invoke-virtual {p0}, Lcom/android/nfc/NfceeAccessControl;->parseNfceeAccess()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/NfceeAccessControl;->mDebugPrintSignature:Z

    .line 72
    return-void
.end method


# virtual methods
.method public check(ILjava/lang/String;)Z
    .registers 11
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 80
    monitor-enter p0

    .line 81
    :try_start_1
    iget-object v5, p0, Lcom/android/nfc/NfceeAccessControl;->mUidCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 82
    .local v1, "cached":Ljava/lang/Boolean;
    if-eqz v1, :cond_15

    .line 83
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit p0

    .line 102
    :goto_14
    return v0

    .line 86
    :cond_15
    const/4 v0, 0x0

    .line 89
    .local v0, "access":Z
    iget-object v5, p0, Lcom/android/nfc/NfceeAccessControl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 90
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "pkgs":[Ljava/lang/String;
    array-length v6, v2

    const/4 v5, 0x0

    :goto_22
    if-lt v5, v6, :cond_36

    .line 101
    :cond_24
    :goto_24
    iget-object v5, p0, Lcom/android/nfc/NfceeAccessControl;->mUidCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    monitor-exit p0

    goto :goto_14

    .line 80
    .end local v0    # "access":Z
    .end local v1    # "cached":Ljava/lang/Boolean;
    .end local v2    # "pkgs":[Ljava/lang/String;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :catchall_33
    move-exception v5

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_33

    throw v5

    .line 91
    .restart local v0    # "access":Z
    .restart local v1    # "cached":Ljava/lang/Boolean;
    .restart local v2    # "pkgs":[Ljava/lang/String;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_36
    :try_start_36
    aget-object v4, v2, v5

    .line 92
    .local v4, "uidPkg":Ljava/lang/String;
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_46

    .line 94
    invoke-virtual {p0, p2}, Lcom/android/nfc/NfceeAccessControl;->checkPackageNfceeAccess(Ljava/lang/String;)Z
    :try_end_41
    .catchall {:try_start_36 .. :try_end_41} :catchall_33

    move-result v5

    if-eqz v5, :cond_24

    .line 95
    const/4 v0, 0x1

    .line 97
    goto :goto_24

    .line 91
    :cond_46
    add-int/lit8 v5, v5, 0x1

    goto :goto_22
.end method

.method public check(Landroid/content/pm/ApplicationInfo;)Z
    .registers 5
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 112
    monitor-enter p0

    .line 113
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/NfceeAccessControl;->mUidCache:Ljava/util/HashMap;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 114
    .local v0, "access":Ljava/lang/Boolean;
    if-nez v0, :cond_26

    .line 115
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/nfc/NfceeAccessControl;->checkPackageNfceeAccess(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/android/nfc/NfceeAccessControl;->mUidCache:Ljava/util/HashMap;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_26
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit p0

    return v1

    .line 112
    .end local v0    # "access":Ljava/lang/Boolean;
    :catchall_2c
    move-exception v1

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method checkPackageNfceeAccess(Ljava/lang/String;)Z
    .registers 15
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 133
    iget-object v7, p0, Lcom/android/nfc/NfceeAccessControl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 135
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/16 v7, 0x40

    :try_start_a
    invoke-virtual {v3, p1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 136
    .local v0, "info":Landroid/content/pm/PackageInfo;
    iget-object v7, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v7, :cond_13

    .line 173
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    :cond_12
    :goto_12
    return v5

    .line 140
    .restart local v0    # "info":Landroid/content/pm/PackageInfo;
    :cond_13
    iget-object v9, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v10, v9

    move v8, v5

    :goto_17
    if-lt v8, v10, :cond_4d

    .line 162
    iget-boolean v6, p0, Lcom/android/nfc/NfceeAccessControl;->mDebugPrintSignature:Z

    if-eqz v6, :cond_12

    .line 163
    const-string v6, "NfceeAccess"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "denied NFCEE access for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " with signature:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v7, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v8, v7

    move v6, v5

    :goto_3b
    if-ge v6, v8, :cond_12

    aget-object v4, v7, v6

    .line 165
    .local v4, "s":Landroid/content/pm/Signature;
    if-eqz v4, :cond_4a

    .line 166
    const-string v9, "NfceeAccess"

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_4a
    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    .line 140
    .end local v4    # "s":Landroid/content/pm/Signature;
    :cond_4d
    aget-object v4, v9, v8

    .line 141
    .restart local v4    # "s":Landroid/content/pm/Signature;
    if-nez v4, :cond_55

    .line 140
    :cond_51
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_17

    .line 144
    :cond_55
    iget-object v7, p0, Lcom/android/nfc/NfceeAccessControl;->mNfceeAccess:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 145
    .local v2, "packages":[Ljava/lang/String;
    if-eqz v2, :cond_51

    .line 148
    array-length v7, v2

    if-nez v7, :cond_82

    .line 150
    sget-boolean v7, Lcom/android/nfc/NfceeAccessControl;->DBG:Z

    if-eqz v7, :cond_80

    const-string v7, "NfceeAccess"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Granted NFCEE access to "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (wildcard)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_80
    move v5, v6

    .line 151
    goto :goto_12

    .line 153
    :cond_82
    array-length v11, v2

    move v7, v5

    :goto_84
    if-ge v7, v11, :cond_51

    aget-object v1, v2, v7

    .line 154
    .local v1, "p":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_af

    .line 156
    sget-boolean v7, Lcom/android/nfc/NfceeAccessControl;->DBG:Z

    if-eqz v7, :cond_ac

    const-string v7, "NfceeAccess"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Granted access to "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (explicit)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ac
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_ac} :catch_b2

    :cond_ac
    move v5, v6

    .line 157
    goto/16 :goto_12

    .line 153
    :cond_af
    add-int/lit8 v7, v7, 0x1

    goto :goto_84

    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    .end local v1    # "p":Ljava/lang/String;
    .end local v2    # "packages":[Ljava/lang/String;
    .end local v4    # "s":Landroid/content/pm/Signature;
    :catch_b2
    move-exception v6

    goto/16 :goto_12
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v6, 0x0

    .line 277
    const-string v5, "mNfceeAccess="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 278
    iget-object v5, p0, Lcom/android/nfc/NfceeAccessControl;->mNfceeAccess:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_11
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2f

    .line 286
    monitor-enter p0

    .line 287
    :try_start_18
    const-string v5, "mNfceeUidCache="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 288
    iget-object v5, p0, Lcom/android/nfc/NfceeAccessControl;->mUidCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_27
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_62

    .line 286
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_18 .. :try_end_2e} :catchall_7f

    .line 293
    return-void

    .line 278
    :cond_2f
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/Signature;

    .line 279
    .local v3, "s":Landroid/content/pm/Signature;
    const-string v5, "\t%s ["

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {p2, v5, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 280
    iget-object v5, p0, Lcom/android/nfc/NfceeAccessControl;->mNfceeAccess:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 281
    .local v2, "ps":[Ljava/lang/String;
    array-length v8, v2

    move v5, v6

    :goto_4c
    if-lt v5, v8, :cond_54

    .line 284
    const-string v5, "]"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_11

    .line 281
    :cond_54
    aget-object v1, v2, v5

    .line 282
    .local v1, "p":Ljava/lang/String;
    const-string v9, "%s, "

    new-array v10, v11, [Ljava/lang/Object;

    aput-object v1, v10, v6

    invoke-virtual {p2, v9, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 281
    add-int/lit8 v5, v5, 0x1

    goto :goto_4c

    .line 288
    .end local v1    # "p":Ljava/lang/String;
    .end local v2    # "ps":[Ljava/lang/String;
    .end local v3    # "s":Landroid/content/pm/Signature;
    :cond_62
    :try_start_62
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 289
    .local v4, "uid":Ljava/lang/Integer;
    iget-object v6, p0, Lcom/android/nfc/NfceeAccessControl;->mUidCache:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 290
    .local v0, "b":Ljava/lang/Boolean;
    const-string v6, "\t%d %s\n"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-virtual {p2, v6, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_27

    .line 286
    .end local v0    # "b":Ljava/lang/Boolean;
    .end local v4    # "uid":Ljava/lang/Integer;
    :catchall_7f
    move-exception v5

    monitor-exit p0
    :try_end_81
    .catchall {:try_start_62 .. :try_end_81} :catchall_7f

    throw v5
.end method

.method getFilePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 297
    const-string v0, "/etc/nfcee_access.xml"

    return-object v0
.end method

.method public invalidateCache()V
    .registers 2

    .prologue
    .line 123
    monitor-enter p0

    .line 124
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfceeAccessControl;->mUidCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 123
    monitor-exit p0

    .line 126
    return-void

    .line 123
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method parseNfceeAccess()Z
    .registers 18

    .prologue
    .line 186
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/NfceeAccessControl;->getFilePath()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v5, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 188
    .local v5, "file":Ljava/io/File;
    const/4 v10, 0x0

    .line 189
    .local v10, "reader":Ljava/io/FileReader;
    const/4 v1, 0x0

    .line 191
    .local v1, "debug":Z
    :try_start_f
    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_14
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_14} :catch_194
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_14} :catch_191
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_14} :catch_18e
    .catchall {:try_start_f .. :try_end_14} :catchall_18c

    .line 192
    .end local v10    # "reader":Ljava/io/FileReader;
    .local v11, "reader":Ljava/io/FileReader;
    :try_start_14
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    .line 193
    .local v4, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 194
    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 197
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v8, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 199
    .local v12, "signature":Landroid/content/pm/Signature;
    const-string v14, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v15, 0x0

    invoke-interface {v9, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 201
    :cond_2b
    :goto_2b
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 202
    .local v3, "event":I
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 203
    .local v13, "tag":Ljava/lang/String;
    const/4 v14, 0x2

    if-ne v3, v14, :cond_ba

    const-string v14, "signer"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_ba

    .line 204
    const/4 v12, 0x0

    .line 205
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 206
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_43
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    if-lt v6, v14, :cond_8d

    .line 212
    :goto_49
    if-nez v12, :cond_a6

    .line 213
    const-string v14, "NfceeAccess"

    const-string v15, "signer tag is missing android:signature attribute, igorning"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_52} :catch_53
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_52} :catch_d0
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_52} :catch_f6
    .catchall {:try_start_14 .. :try_end_52} :catchall_126

    goto :goto_2b

    .line 257
    .end local v3    # "event":I
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "i":I
    .end local v8    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "signature":Landroid/content/pm/Signature;
    .end local v13    # "tag":Ljava/lang/String;
    :catch_53
    move-exception v2

    move-object v10, v11

    .line 258
    .end local v11    # "reader":Ljava/io/FileReader;
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v10    # "reader":Ljava/io/FileReader;
    :goto_55
    :try_start_55
    const-string v14, "NfceeAccess"

    const-string v15, "failed to load NFCEE access list"

    invoke-static {v14, v15, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 259
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfceeAccessControl;->mNfceeAccess:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V
    :try_end_63
    .catchall {:try_start_55 .. :try_end_63} :catchall_18c

    .line 266
    if-eqz v10, :cond_68

    .line 268
    :try_start_65
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_187

    .line 272
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_68
    :goto_68
    const-string v14, "NfceeAccess"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "read "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfceeAccessControl;->mNfceeAccess:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " signature(s) for NFCEE access"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return v1

    .line 207
    .end local v10    # "reader":Ljava/io/FileReader;
    .restart local v3    # "event":I
    .restart local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6    # "i":I
    .restart local v8    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "reader":Ljava/io/FileReader;
    .restart local v12    # "signature":Landroid/content/pm/Signature;
    .restart local v13    # "tag":Ljava/lang/String;
    :cond_8d
    :try_start_8d
    const-string v14, "android:signature"

    invoke-interface {v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a3

    .line 208
    new-instance v12, Landroid/content/pm/Signature;

    .end local v12    # "signature":Landroid/content/pm/Signature;
    invoke-interface {v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 209
    .restart local v12    # "signature":Landroid/content/pm/Signature;
    goto :goto_49

    .line 206
    :cond_a3
    add-int/lit8 v6, v6, 0x1

    goto :goto_43

    .line 216
    :cond_a6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfceeAccessControl;->mNfceeAccess:Ljava/util/HashMap;

    invoke-virtual {v14, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2b

    .line 217
    const-string v14, "NfceeAccess"

    const-string v15, "duplicate signature, ignoring"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v12, 0x0

    .line 219
    goto/16 :goto_2b

    .line 221
    .end local v6    # "i":I
    :cond_ba
    const/4 v14, 0x3

    if-ne v3, v14, :cond_110

    const-string v14, "signer"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_110

    .line 222
    if-nez v12, :cond_e1

    .line 223
    const-string v14, "NfceeAccess"

    const-string v15, "mis-matched signer tag"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ce
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8d .. :try_end_ce} :catch_53
    .catch Ljava/io/FileNotFoundException; {:try_start_8d .. :try_end_ce} :catch_d0
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_ce} :catch_f6
    .catchall {:try_start_8d .. :try_end_ce} :catchall_126

    goto/16 :goto_2b

    .line 261
    .end local v3    # "event":I
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v8    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "signature":Landroid/content/pm/Signature;
    .end local v13    # "tag":Ljava/lang/String;
    :catch_d0
    move-exception v14

    move-object v10, v11

    .end local v11    # "reader":Ljava/io/FileReader;
    .restart local v10    # "reader":Ljava/io/FileReader;
    :goto_d2
    :try_start_d2
    const-string v14, "NfceeAccess"

    const-string v15, "could not find /etc/nfcee_access.xml, no NFCEE access allowed"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d9
    .catchall {:try_start_d2 .. :try_end_d9} :catchall_18c

    .line 266
    if-eqz v10, :cond_68

    .line 268
    :try_start_db
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_de} :catch_df

    goto :goto_68

    .line 269
    :catch_df
    move-exception v14

    goto :goto_68

    .line 226
    .end local v10    # "reader":Ljava/io/FileReader;
    .restart local v3    # "event":I
    .restart local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v8    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "reader":Ljava/io/FileReader;
    .restart local v12    # "signature":Landroid/content/pm/Signature;
    .restart local v13    # "tag":Ljava/lang/String;
    :cond_e1
    :try_start_e1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/NfceeAccessControl;->mNfceeAccess:Ljava/util/HashMap;

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    invoke-virtual {v15, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V
    :try_end_f4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e1 .. :try_end_f4} :catch_53
    .catch Ljava/io/FileNotFoundException; {:try_start_e1 .. :try_end_f4} :catch_d0
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_f4} :catch_f6
    .catchall {:try_start_e1 .. :try_end_f4} :catchall_126

    goto/16 :goto_2b

    .line 262
    .end local v3    # "event":I
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v8    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "signature":Landroid/content/pm/Signature;
    .end local v13    # "tag":Ljava/lang/String;
    :catch_f6
    move-exception v2

    move-object v10, v11

    .line 263
    .end local v11    # "reader":Ljava/io/FileReader;
    .local v2, "e":Ljava/io/IOException;
    .restart local v10    # "reader":Ljava/io/FileReader;
    :goto_f8
    :try_start_f8
    const-string v14, "NfceeAccess"

    const-string v15, "Failed to load NFCEE access list"

    invoke-static {v14, v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfceeAccessControl;->mNfceeAccess:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V
    :try_end_106
    .catchall {:try_start_f8 .. :try_end_106} :catchall_18c

    .line 266
    if-eqz v10, :cond_68

    .line 268
    :try_start_108
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_10b
    .catch Ljava/io/IOException; {:try_start_108 .. :try_end_10b} :catch_10d

    goto/16 :goto_68

    .line 269
    :catch_10d
    move-exception v14

    goto/16 :goto_68

    .line 228
    .end local v2    # "e":Ljava/io/IOException;
    .end local v10    # "reader":Ljava/io/FileReader;
    .restart local v3    # "event":I
    .restart local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v8    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "reader":Ljava/io/FileReader;
    .restart local v12    # "signature":Landroid/content/pm/Signature;
    .restart local v13    # "tag":Ljava/lang/String;
    :cond_110
    const/4 v14, 0x2

    if-ne v3, v14, :cond_16a

    :try_start_113
    const-string v14, "package"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16a

    .line 229
    if-nez v12, :cond_12e

    .line 230
    const-string v14, "NfceeAccess"

    const-string v15, "ignoring unnested packge tag"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_124
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_113 .. :try_end_124} :catch_53
    .catch Ljava/io/FileNotFoundException; {:try_start_113 .. :try_end_124} :catch_d0
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_124} :catch_f6
    .catchall {:try_start_113 .. :try_end_124} :catchall_126

    goto/16 :goto_2b

    .line 265
    .end local v3    # "event":I
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v8    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "signature":Landroid/content/pm/Signature;
    .end local v13    # "tag":Ljava/lang/String;
    :catchall_126
    move-exception v14

    move-object v10, v11

    .line 266
    .end local v11    # "reader":Ljava/io/FileReader;
    .restart local v10    # "reader":Ljava/io/FileReader;
    :goto_128
    if-eqz v10, :cond_12d

    .line 268
    :try_start_12a
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_12d
    .catch Ljava/io/IOException; {:try_start_12a .. :try_end_12d} :catch_18a

    .line 271
    :cond_12d
    :goto_12d
    throw v14

    .line 233
    .end local v10    # "reader":Ljava/io/FileReader;
    .restart local v3    # "event":I
    .restart local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v8    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "reader":Ljava/io/FileReader;
    .restart local v12    # "signature":Landroid/content/pm/Signature;
    .restart local v13    # "tag":Ljava/lang/String;
    :cond_12e
    const/4 v7, 0x0

    .line 234
    .local v7, "name":Ljava/lang/String;
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_130
    :try_start_130
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    if-lt v6, v14, :cond_142

    .line 240
    :goto_136
    if-nez v7, :cond_156

    .line 241
    const-string v14, "NfceeAccess"

    const-string v15, "package missing android:name, ignoring signer group"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 v12, 0x0

    .line 243
    goto/16 :goto_2b

    .line 235
    :cond_142
    const-string v14, "android:name"

    invoke-interface {v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_153

    .line 236
    invoke-interface {v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    .line 237
    goto :goto_136

    .line 234
    :cond_153
    add-int/lit8 v6, v6, 0x1

    goto :goto_130

    .line 246
    :cond_156
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_165

    .line 247
    const-string v14, "NfceeAccess"

    const-string v15, "duplicate package name in signer group, ignoring"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b

    .line 250
    :cond_165
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2b

    .line 251
    .end local v6    # "i":I
    .end local v7    # "name":Ljava/lang/String;
    :cond_16a
    const/4 v14, 0x2

    if-ne v3, v14, :cond_178

    const-string v14, "debug"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_172
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_130 .. :try_end_172} :catch_53
    .catch Ljava/io/FileNotFoundException; {:try_start_130 .. :try_end_172} :catch_d0
    .catch Ljava/io/IOException; {:try_start_130 .. :try_end_172} :catch_f6
    .catchall {:try_start_130 .. :try_end_172} :catchall_126

    move-result v14

    if-eqz v14, :cond_178

    .line 252
    const/4 v1, 0x1

    .line 253
    goto/16 :goto_2b

    :cond_178
    const/4 v14, 0x1

    if-ne v3, v14, :cond_2b

    .line 266
    if-eqz v11, :cond_184

    .line 268
    :try_start_17d
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V
    :try_end_180
    .catch Ljava/io/IOException; {:try_start_17d .. :try_end_180} :catch_183

    move-object v10, v11

    .line 269
    .end local v11    # "reader":Ljava/io/FileReader;
    .restart local v10    # "reader":Ljava/io/FileReader;
    goto/16 :goto_68

    .end local v10    # "reader":Ljava/io/FileReader;
    .restart local v11    # "reader":Ljava/io/FileReader;
    :catch_183
    move-exception v14

    :cond_184
    move-object v10, v11

    .end local v11    # "reader":Ljava/io/FileReader;
    .restart local v10    # "reader":Ljava/io/FileReader;
    goto/16 :goto_68

    .end local v3    # "event":I
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v8    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "signature":Landroid/content/pm/Signature;
    .end local v13    # "tag":Ljava/lang/String;
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_187
    move-exception v14

    goto/16 :goto_68

    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_18a
    move-exception v15

    goto :goto_12d

    .line 265
    :catchall_18c
    move-exception v14

    goto :goto_128

    .line 262
    :catch_18e
    move-exception v2

    goto/16 :goto_f8

    .line 261
    :catch_191
    move-exception v14

    goto/16 :goto_d2

    .line 257
    :catch_194
    move-exception v2

    goto/16 :goto_55
.end method
