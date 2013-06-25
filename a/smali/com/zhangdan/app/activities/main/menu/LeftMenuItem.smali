.class public Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;
.super Ljava/lang/Object;
.source "LeftMenuItem.java"


# static fields
.field public static final FLAG_ACCOUNT:I = 0x10

.field public static final FLAG_BANK_SERVICE:I = 0x8

.field public static final FLAG_BILL_ANALYZE:I = 0x7

.field public static final FLAG_BILL_LIST:I = 0x6

.field public static final FLAG_BRAND_WALL:I = 0xc

.field public static final FLAG_EMAIL_BILL_AUTO:I = 0x2

.field public static final FLAG_EMAIL_BILL_MANUAL:I = 0x4

.field public static final FLAG_FAVORITE:I = 0xe

.field public static final FLAG_HAND_INPUT:I = 0x5

.field public static final FLAG_HOME:I = 0x1

.field public static final FLAG_RECOMMEND_LIST:I = 0xb

.field public static final FLAG_SHOP_LIST:I = 0xa

.field public static final FLAG_SHOP_SEARCH:I = 0xd

.field public static final FLAG_SMS_BILL_AUTO:I = 0x3

.field public static final FLAG_TALK:I = 0xf

.field public static final FLAG_UNSETTLED_BILL:I = 0x9


# instance fields
.field private desc:Ljava/lang/String;

.field private flag:I

.field private iconResId:I

.field private titleStrResId:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .parameter "titleResId"
    .parameter "iconResId"
    .parameter "flag"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;->titleStrResId:I

    .line 63
    iput p2, p0, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;->iconResId:I

    .line 64
    iput p3, p0, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;->flag:I

    .line 65
    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;->flag:I

    return v0
.end method

.method public getIconResId()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;->iconResId:I

    return v0
.end method

.method public getTitleStrResId()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;->titleStrResId:I

    return v0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .parameter "desc"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;->desc:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setFlag(I)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 88
    iput p1, p0, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;->flag:I

    .line 89
    return-void
.end method
