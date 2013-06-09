.class final Lcom/baidu/location/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/GpsStatus$Listener;
.implements Landroid/location/GpsStatus$NmeaListener;


# instance fields
.field final synthetic a:Lcom/baidu/location/n;


# direct methods
.method private constructor <init>(Lcom/baidu/location/n;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/o;->a:Lcom/baidu/location/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/n;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/o;-><init>(Lcom/baidu/location/n;)V

    return-void
.end method


# virtual methods
.method public final onGpsStatusChanged(I)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x3

    iget-object v0, p0, Lcom/baidu/location/o;->a:Lcom/baidu/location/n;

    invoke-static {v0}, Lcom/baidu/location/n;->b(Lcom/baidu/location/n;)Landroid/location/LocationManager;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/baidu/location/o;->a:Lcom/baidu/location/n;

    invoke-static {v0, v3}, Lcom/baidu/location/n;->a(Lcom/baidu/location/n;Landroid/location/Location;)V

    iget-object v0, p0, Lcom/baidu/location/o;->a:Lcom/baidu/location/n;

    invoke-static {v0, v2}, Lcom/baidu/location/n;->b(Lcom/baidu/location/n;Z)V

    invoke-static {v2}, Lcom/baidu/location/n;->a(I)I

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/baidu/location/ak;->e()V

    iget-object v0, p0, Lcom/baidu/location/o;->a:Lcom/baidu/location/n;

    invoke-static {v0}, Lcom/baidu/location/n;->c(Lcom/baidu/location/n;)Landroid/location/GpsStatus;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/o;->a:Lcom/baidu/location/n;

    iget-object v1, p0, Lcom/baidu/location/o;->a:Lcom/baidu/location/n;

    invoke-static {v1}, Lcom/baidu/location/n;->b(Lcom/baidu/location/n;)Landroid/location/LocationManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/location/n;->a(Lcom/baidu/location/n;Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    :goto_1
    iget-object v0, p0, Lcom/baidu/location/o;->a:Lcom/baidu/location/n;

    invoke-static {v0}, Lcom/baidu/location/n;->c(Lcom/baidu/location/n;)Landroid/location/GpsStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v0, v1, 0x1

    :goto_3
    move v1, v0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/o;->a:Lcom/baidu/location/n;

    invoke-static {v0}, Lcom/baidu/location/n;->b(Lcom/baidu/location/n;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/o;->a:Lcom/baidu/location/n;

    invoke-static {v1}, Lcom/baidu/location/n;->c(Lcom/baidu/location/n;)Landroid/location/GpsStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "gps nunmber in count:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    invoke-static {}, Lcom/baidu/location/n;->g()I

    move-result v0

    if-lt v0, v5, :cond_3

    if-ge v1, v5, :cond_3

    iget-object v0, p0, Lcom/baidu/location/o;->a:Lcom/baidu/location/n;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/baidu/location/n;->b(Lcom/baidu/location/n;J)J

    :cond_3
    if-ge v1, v5, :cond_4

    iget-object v0, p0, Lcom/baidu/location/o;->a:Lcom/baidu/location/n;

    invoke-static {v0, v2}, Lcom/baidu/location/n;->b(Lcom/baidu/location/n;Z)V

    :cond_4
    invoke-static {}, Lcom/baidu/location/n;->g()I

    move-result v0

    if-gt v0, v5, :cond_5

    if-le v1, v5, :cond_5

    iget-object v0, p0, Lcom/baidu/location/o;->a:Lcom/baidu/location/n;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/baidu/location/n;->b(Lcom/baidu/location/n;Z)V

    :cond_5
    invoke-static {v1}, Lcom/baidu/location/n;->a(I)I

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final onNmeaReceived(JLjava/lang/String;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    sget-boolean v0, Lcom/baidu/location/ak;->ae:Z

    if-nez v0, :cond_1

    sput v7, Lcom/baidu/location/ak;->d:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_0

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x96

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/location/o;->a:Lcom/baidu/location/n;

    invoke-virtual {v0}, Lcom/baidu/location/n;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "gps manager onNmeaReceived : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    iget-object v2, p0, Lcom/baidu/location/o;->a:Lcom/baidu/location/n;

    invoke-static {v2}, Lcom/baidu/location/n;->d(Lcom/baidu/location/n;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x190

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/o;->a:Lcom/baidu/location/n;

    invoke-static {v0}, Lcom/baidu/location/n;->e(Lcom/baidu/location/n;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/o;->a:Lcom/baidu/location/n;

    invoke-static {v0}, Lcom/baidu/location/n;->f(Lcom/baidu/location/n;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    :try_start_0
    new-instance v0, Lcom/baidu/location/q;

    iget-object v1, p0, Lcom/baidu/location/o;->a:Lcom/baidu/location/n;

    iget-object v2, p0, Lcom/baidu/location/o;->a:Lcom/baidu/location/n;

    invoke-static {v2}, Lcom/baidu/location/n;->f(Lcom/baidu/location/n;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/location/o;->a:Lcom/baidu/location/n;

    invoke-static {v3}, Lcom/baidu/location/n;->g(Lcom/baidu/location/n;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/location/o;->a:Lcom/baidu/location/n;

    invoke-static {v4}, Lcom/baidu/location/n;->h(Lcom/baidu/location/n;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/location/o;->a:Lcom/baidu/location/n;

    invoke-static {v5}, Lcom/baidu/location/n;->i(Lcom/baidu/location/n;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/baidu/location/q;-><init>(Lcom/baidu/location/n;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    invoke-static {v0}, Lcom/baidu/location/q;->a(Lcom/baidu/location/q;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v0}, Lcom/baidu/location/q;->b(Lcom/baidu/location/q;)I

    move-result v1

    sput v1, Lcom/baidu/location/ak;->d:I

    if-lez v1, :cond_2

    const-string v1, "&nmea=%.1f|%.1f&g_tp=%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Lcom/baidu/location/q;->c(Lcom/baidu/location/q;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Lcom/baidu/location/q;->d(Lcom/baidu/location/q;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x2

    sget v3, Lcom/baidu/location/ak;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/location/n;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/baidu/location/o;->a:Lcom/baidu/location/n;

    invoke-static {v0}, Lcom/baidu/location/n;->f(Lcom/baidu/location/n;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/baidu/location/o;->a:Lcom/baidu/location/n;

    iget-object v1, p0, Lcom/baidu/location/o;->a:Lcom/baidu/location/n;

    iget-object v2, p0, Lcom/baidu/location/o;->a:Lcom/baidu/location/n;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/baidu/location/n;->c(Lcom/baidu/location/n;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/location/n;->b(Lcom/baidu/location/n;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/location/n;->a(Lcom/baidu/location/n;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/o;->a:Lcom/baidu/location/n;

    invoke-static {v0, v7}, Lcom/baidu/location/n;->c(Lcom/baidu/location/n;Z)Z

    :cond_3
    const-string v0, "$GPGGA"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/baidu/location/o;->a:Lcom/baidu/location/n;

    invoke-static {v0, v8}, Lcom/baidu/location/n;->c(Lcom/baidu/location/n;Z)Z

    iget-object v0, p0, Lcom/baidu/location/o;->a:Lcom/baidu/location/n;

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/location/n;->a(Lcom/baidu/location/n;Ljava/lang/String;)Ljava/lang/String;

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/baidu/location/o;->a:Lcom/baidu/location/n;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/baidu/location/n;->c(Lcom/baidu/location/n;J)J

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    :try_start_1
    sput v0, Lcom/baidu/location/ak;->d:I

    invoke-static {}, Lcom/baidu/location/ak;->e()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sput v7, Lcom/baidu/location/ak;->d:I

    goto :goto_1

    :cond_6
    const-string v0, "$GPGSV"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/baidu/location/o;->a:Lcom/baidu/location/n;

    invoke-static {v0}, Lcom/baidu/location/n;->f(Lcom/baidu/location/n;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    const-string v0, "$GPGSA"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/location/o;->a:Lcom/baidu/location/n;

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/location/n;->c(Lcom/baidu/location/n;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2
.end method
