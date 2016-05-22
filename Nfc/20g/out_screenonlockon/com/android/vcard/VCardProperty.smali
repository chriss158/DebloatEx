.class public Lcom/android/vcard/VCardProperty;
.super Ljava/lang/Object;
.source "VCardProperty.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "vCard"


# instance fields
.field private mByteValue:[B

.field private mGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mParameterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRawValue:Ljava/lang/String;

.field private mValueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardProperty;->mParameterMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addGroup(Ljava/lang/String;)V
    .registers 3
    .param p1, "group"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/vcard/VCardProperty;->mGroupList:Ljava/util/List;

    if-nez v0, :cond_b

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardProperty;->mGroupList:Ljava/util/List;

    .line 84
    :cond_b
    iget-object v0, p0, Lcom/android/vcard/VCardProperty;->mGroupList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "paramValue"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v1, p0, Lcom/android/vcard/VCardProperty;->mParameterMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 95
    const-string v1, "TYPE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 96
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 100
    .local v0, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :goto_15
    iget-object v1, p0, Lcom/android/vcard/VCardProperty;->mParameterMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :goto_1a
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 105
    return-void

    .line 98
    .end local v0    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_1e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    goto :goto_15

    .line 102
    .end local v0    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_24
    iget-object v1, p0, Lcom/android/vcard/VCardProperty;->mParameterMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .restart local v0    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    goto :goto_1a
.end method

.method public addValues(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "propertyValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/vcard/VCardProperty;->mValueList:Ljava/util/List;

    if-nez v0, :cond_c

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/vcard/VCardProperty;->mValueList:Ljava/util/List;

    .line 136
    :goto_b
    return-void

    .line 134
    :cond_c
    iget-object v0, p0, Lcom/android/vcard/VCardProperty;->mValueList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_b
.end method

.method public varargs addValues([Ljava/lang/String;)V
    .registers 4
    .param p1, "propertyValues"    # [Ljava/lang/String;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/vcard/VCardProperty;->mValueList:Ljava/util/List;

    if-nez v0, :cond_b

    .line 124
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vcard/VCardProperty;->mValueList:Ljava/util/List;

    .line 128
    :goto_a
    return-void

    .line 126
    :cond_b
    iget-object v0, p0, Lcom/android/vcard/VCardProperty;->mValueList:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_a
.end method

.method public getByteValue()[B
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/vcard/VCardProperty;->mByteValue:[B

    return-object v0
.end method

.method public getGroupList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/vcard/VCardProperty;->mGroupList:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/vcard/VCardProperty;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/vcard/VCardProperty;->mParameterMap:Ljava/util/Map;

    return-object v0
.end method

.method public getParameters(Ljava/lang/String;)Ljava/util/Collection;
    .registers 3
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/vcard/VCardProperty;->mParameterMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public getRawValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/vcard/VCardProperty;->mRawValue:Ljava/lang/String;

    return-object v0
.end method

.method public getValueList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/vcard/VCardProperty;->mValueList:Ljava/util/List;

    return-object v0
.end method

.method public setByteValue([B)V
    .registers 2
    .param p1, "byteValue"    # [B

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/vcard/VCardProperty;->mByteValue:[B

    .line 140
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/vcard/VCardProperty;->mName:Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 74
    const-string v0, "vCard"

    const-string v1, "Property name is re-defined (existing: %s, requested: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/vcard/VCardProperty;->mName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_1a
    iput-object p1, p0, Lcom/android/vcard/VCardProperty;->mName:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "paramValue"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/vcard/VCardProperty;->mParameterMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/android/vcard/VCardProperty;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public setRawValue(Ljava/lang/String;)V
    .registers 2
    .param p1, "rawValue"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/vcard/VCardProperty;->mRawValue:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setValues(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "propertyValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/vcard/VCardProperty;->mValueList:Ljava/util/List;

    .line 120
    return-void
.end method

.method public varargs setValues([Ljava/lang/String;)V
    .registers 3
    .param p1, "propertyValues"    # [Ljava/lang/String;

    .prologue
    .line 115
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vcard/VCardProperty;->mValueList:Ljava/util/List;

    .line 116
    return-void
.end method
