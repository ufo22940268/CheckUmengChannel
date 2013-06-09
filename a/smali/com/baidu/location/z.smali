.class public final Lcom/baidu/location/z;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/util/List;

.field final synthetic b:Lcom/baidu/location/w;

.field private c:J

.field private d:J

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/baidu/location/w;Ljava/util/List;J)V
    .locals 3

    const-wide/16 v1, 0x0

    iput-object p1, p0, Lcom/baidu/location/z;->b:Lcom/baidu/location/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/z;->a:Ljava/util/List;

    iput-wide v1, p0, Lcom/baidu/location/z;->c:J

    iput-wide v1, p0, Lcom/baidu/location/z;->d:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/z;->e:Z

    iput-wide p3, p0, Lcom/baidu/location/z;->c:J

    iput-object p2, p0, Lcom/baidu/location/z;->a:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/z;->d:J

    invoke-direct {p0}, Lcom/baidu/location/z;->k()V

    invoke-static {}, Lcom/baidu/location/w;->j()Ljava/lang/String;

    invoke-direct {p0}, Lcom/baidu/location/z;->j()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->f()V

    return-void
.end method

.method private b(I)Ljava/lang/String;
    .locals 14

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/baidu/location/z;->a()I

    move-result v0

    if-gtz v0, :cond_0

    move-object v0, v5

    :goto_0
    return-object v0

    :cond_0
    new-instance v8, Ljava/lang/StringBuffer;

    const/16 v0, 0x200

    invoke-direct {v8, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v0, p0, Lcom/baidu/location/z;->b:Lcom/baidu/location/w;

    invoke-virtual {v0}, Lcom/baidu/location/w;->f()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/baidu/location/z;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_a

    :goto_1
    move v1, v6

    move v2, v3

    move v4, v3

    move v7, v3

    :goto_2
    if-ge v7, p1, :cond_4

    iget-object v0, p0, Lcom/baidu/location/z;->a:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    if-eqz v0, :cond_7

    if-eqz v1, :cond_2

    const-string v0, "&wf="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/baidu/location/z;->a:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v1, ":"

    const-string v10, ""

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/baidu/location/z;->a:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    if-gez v0, :cond_1

    neg-int v0, v0

    :cond_1
    const-string v1, ";%d;"

    new-array v11, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v11, v3

    invoke-static {v1, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v4, 0x1

    if-eqz v9, :cond_9

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_3
    move v2, v0

    move v0, v3

    :goto_4
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    move v4, v1

    move v1, v0

    goto :goto_2

    :cond_2
    const-string v0, "|"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/baidu/location/z;->a:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v10, ":"

    const-string v11, ""

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/baidu/location/z;->a:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    if-gez v0, :cond_3

    neg-int v0, v0

    :cond_3
    const-string v11, ";%d;"

    new-array v12, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v12, v3

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v4, 0x1

    if-eqz v9, :cond_8

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move v2, v0

    move v13, v1

    move v1, v0

    move v0, v13

    goto :goto_4

    :cond_4
    if-nez v1, :cond_6

    invoke-static {}, Lcom/baidu/location/w;->j()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "&wf_n="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&wf_st="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v0, p0, Lcom/baidu/location/z;->c:J

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v0, "&wf_et="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v0, p0, Lcom/baidu/location/z;->d:J

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    if-lez v2, :cond_5

    iput-boolean v6, p0, Lcom/baidu/location/z;->e:Z

    :cond_5
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    move-object v0, v5

    goto/16 :goto_0

    :cond_7
    move v0, v1

    move v1, v4

    goto/16 :goto_4

    :cond_8
    move v13, v1

    move v1, v0

    move v0, v13

    goto/16 :goto_4

    :cond_9
    move v0, v2

    goto/16 :goto_3

    :cond_a
    move p1, v0

    goto/16 :goto_1
.end method

.method private j()Ljava/lang/String;
    .locals 7

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "wifi="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/baidu/location/z;->a:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/baidu/location/z;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/z;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v4, v0, Landroid/net/wifi/ScanResult;->level:I

    iget-object v0, p0, Lcom/baidu/location/z;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v5, ":"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",%d;"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private k()V
    .locals 8

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/baidu/location/z;->a()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/z;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v5, v0

    move v2, v1

    :goto_0
    if-lez v5, :cond_0

    if-eqz v2, :cond_0

    move v3, v4

    move v2, v4

    :goto_1
    if-ge v3, v5, :cond_2

    iget-object v0, p0, Lcom/baidu/location/z;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v6, v0, Landroid/net/wifi/ScanResult;->level:I

    iget-object v0, p0, Lcom/baidu/location/z;->a:Ljava/util/List;

    add-int/lit8 v7, v3, 0x1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    if-ge v6, v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/z;->a:Ljava/util/List;

    add-int/lit8 v2, v3, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v2, p0, Lcom/baidu/location/z;->a:Ljava/util/List;

    add-int/lit8 v6, v3, 0x1

    iget-object v7, p0, Lcom/baidu/location/z;->a:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/baidu/location/z;->a:Ljava/util/List;

    invoke-interface {v2, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v5, -0x1

    move v5, v0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_2
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/z;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/z;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/location/z;->a()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v1, 0x100

    invoke-direct {v4, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x1

    move v2, v0

    move v3, v1

    move v1, v0

    :goto_1
    sget v0, Lcom/baidu/location/ak;->I:I

    if-ge v1, v0, :cond_4

    and-int v0, v3, p1

    if-eqz v0, :cond_2

    if-nez v2, :cond_3

    const-string v0, "&ssid="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    iget-object v0, p0, Lcom/baidu/location/z;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ";"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/baidu/location/z;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    :cond_2
    shl-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    const-string v0, "|"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    :try_start_0
    sget v0, Lcom/baidu/location/ak;->I:I

    invoke-direct {p0, v0}, Lcom/baidu/location/z;->b(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    const/16 v0, 0xf

    :try_start_0
    invoke-direct {p0, v0}, Lcom/baidu/location/z;->b(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 9

    const/16 v0, 0xa

    const/4 v5, 0x1

    const/4 v2, 0x0

    new-instance v6, Ljava/lang/StringBuffer;

    const/16 v1, 0x200

    invoke-direct {v6, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "wifi info:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/baidu/location/z;->a()I

    move-result v1

    if-gtz v1, :cond_0

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/baidu/location/z;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_1

    move v1, v0

    :cond_1
    move v4, v2

    move v3, v5

    :goto_1
    if-ge v4, v1, :cond_4

    iget-object v0, p0, Lcom/baidu/location/z;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    if-eqz v0, :cond_3

    if-eqz v3, :cond_2

    const-string v0, "wifi="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/baidu/location/z;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v3, ":"

    const-string v7, ""

    invoke-virtual {v0, v3, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/baidu/location/z;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    const-string v3, ";%d;"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v2

    :goto_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v0

    goto :goto_1

    :cond_2
    const-string v0, ";"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/baidu/location/z;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v7, ":"

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/baidu/location/z;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    const-string v7, ",%d;"

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v2

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public final e()I
    .locals 3

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/baidu/location/z;->a()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/z;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    neg-int v0, v0

    if-lez v0, :cond_1

    move v2, v0

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/z;->e:Z

    return v0
.end method

.method public final g()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/z;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/z;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/z;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
