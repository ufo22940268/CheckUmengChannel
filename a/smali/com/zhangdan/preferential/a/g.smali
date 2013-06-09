.class public final Lcom/zhangdan/preferential/a/g;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)I
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const v0, 0x7f0202f3

    :goto_0
    return v0

    :sswitch_0
    const v0, 0x7f02020d

    goto :goto_0

    :sswitch_1
    const v0, 0x7f02034a

    goto :goto_0

    :sswitch_2
    const v0, 0x7f02030f

    goto :goto_0

    :sswitch_3
    const v0, 0x7f0200d1

    goto :goto_0

    :sswitch_4
    const v0, 0x7f020215

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x32 -> :sswitch_3
        0x3c -> :sswitch_4
    .end sparse-switch
.end method

.method public static a(Lcom/zhangdan/preferential/data/model/Position;)Lcom/baidu/mapapi/GeoPoint;
    .locals 6

    const-wide v4, 0x412e848000000000L

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/baidu/mapapi/GeoPoint;

    iget-wide v1, p0, Lcom/zhangdan/preferential/data/model/Position;->a:D

    mul-double/2addr v1, v4

    double-to-int v1, v1

    iget-wide v2, p0, Lcom/zhangdan/preferential/data/model/Position;->b:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    goto :goto_0
.end method
