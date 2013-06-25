.class public Lcom/zhangdan/app/data/CategoryIconRes;
.super Ljava/lang/Object;
.source "CategoryIconRes.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIconByParentId(I)I
    .locals 1
    .parameter "parentId"

    .prologue
    .line 8
    const/4 v0, 0x0

    .line 9
    .local v0, resId:I
    sparse-switch p0, :sswitch_data_0

    .line 48
    const v0, 0x7f0201ad

    .line 51
    :goto_0
    return v0

    .line 11
    :sswitch_0
    const v0, 0x7f0201a6

    .line 12
    goto :goto_0

    .line 14
    :sswitch_1
    const v0, 0x7f0201a9

    .line 15
    goto :goto_0

    .line 18
    :sswitch_2
    const v0, 0x7f0201aa

    .line 19
    goto :goto_0

    .line 21
    :sswitch_3
    const v0, 0x7f0201ab

    .line 22
    goto :goto_0

    .line 25
    :sswitch_4
    const v0, 0x7f0201ac

    .line 26
    goto :goto_0

    .line 28
    :sswitch_5
    const v0, 0x7f0201ae

    .line 29
    goto :goto_0

    .line 32
    :sswitch_6
    const v0, 0x7f0201af

    .line 33
    goto :goto_0

    .line 35
    :sswitch_7
    const v0, 0x7f0201b0

    .line 36
    goto :goto_0

    .line 39
    :sswitch_8
    const v0, 0x7f0201a7

    .line 40
    goto :goto_0

    .line 42
    :sswitch_9
    const v0, 0x7f0201a8

    .line 43
    goto :goto_0

    .line 45
    :sswitch_a
    const v0, 0x7f0201ad

    .line 46
    goto :goto_0

    .line 9
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x9 -> :sswitch_7
        0xd -> :sswitch_8
        0xf -> :sswitch_9
        0x32 -> :sswitch_a
    .end sparse-switch
.end method
