.class public final enum Lcom/zhangdan/app/util/CurrencyUtil;
.super Ljava/lang/Enum;
.source "CurrencyUtil.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zhangdan/app/util/CurrencyUtil;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zhangdan/app/util/CurrencyUtil;

.field public static final enum CURRENCY_EUR:Lcom/zhangdan/app/util/CurrencyUtil;

.field public static final enum CURRENCY_HKD:Lcom/zhangdan/app/util/CurrencyUtil;

.field public static final enum CURRENCY_JPY:Lcom/zhangdan/app/util/CurrencyUtil;

.field public static final enum CURRENCY_KRW:Lcom/zhangdan/app/util/CurrencyUtil;

.field public static final enum CURRENCY_RMB:Lcom/zhangdan/app/util/CurrencyUtil;

.field public static final enum CURRENCY_USD:Lcom/zhangdan/app/util/CurrencyUtil;


# instance fields
.field private code:Ljava/lang/String;

.field private desc:Ljava/lang/String;

.field private rate:F

.field private symbol:Ljava/lang/String;

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v15, 0x5

    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v3, 0x1

    .line 10
    new-instance v0, Lcom/zhangdan/app/util/CurrencyUtil;

    const-string v1, "CURRENCY_RMB"

    const/4 v2, 0x0

    const-string v4, "\u4eba\u6c11\u5e01"

    const-string v5, "RMB"

    const v6, 0x40c70a3d

    const-string v7, "\uffe5"

    invoke-direct/range {v0 .. v7}, Lcom/zhangdan/app/util/CurrencyUtil;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;FLjava/lang/String;)V

    sput-object v0, Lcom/zhangdan/app/util/CurrencyUtil;->CURRENCY_RMB:Lcom/zhangdan/app/util/CurrencyUtil;

    .line 11
    new-instance v1, Lcom/zhangdan/app/util/CurrencyUtil;

    const-string v2, "CURRENCY_USD"

    const-string v5, "\u7f8e\u5143"

    const-string v6, "USD"

    const/high16 v7, 0x3f80

    const-string v8, "$"

    move v4, v12

    invoke-direct/range {v1 .. v8}, Lcom/zhangdan/app/util/CurrencyUtil;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;FLjava/lang/String;)V

    sput-object v1, Lcom/zhangdan/app/util/CurrencyUtil;->CURRENCY_USD:Lcom/zhangdan/app/util/CurrencyUtil;

    .line 12
    new-instance v4, Lcom/zhangdan/app/util/CurrencyUtil;

    const-string v5, "CURRENCY_HKD"

    const-string v8, "\u6e2f\u5e01"

    const-string v9, "HKD"

    const v10, 0x40f851ec

    const-string v11, "\ufe69"

    move v6, v12

    move v7, v13

    invoke-direct/range {v4 .. v11}, Lcom/zhangdan/app/util/CurrencyUtil;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;FLjava/lang/String;)V

    sput-object v4, Lcom/zhangdan/app/util/CurrencyUtil;->CURRENCY_HKD:Lcom/zhangdan/app/util/CurrencyUtil;

    .line 13
    new-instance v4, Lcom/zhangdan/app/util/CurrencyUtil;

    const-string v5, "CURRENCY_EUR"

    const-string v8, "\u6b27\u5143"

    const-string v9, "EUR"

    const v10, 0x3f428f5c

    const-string v11, "\u20ac"

    move v6, v13

    move v7, v14

    invoke-direct/range {v4 .. v11}, Lcom/zhangdan/app/util/CurrencyUtil;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;FLjava/lang/String;)V

    sput-object v4, Lcom/zhangdan/app/util/CurrencyUtil;->CURRENCY_EUR:Lcom/zhangdan/app/util/CurrencyUtil;

    .line 14
    new-instance v4, Lcom/zhangdan/app/util/CurrencyUtil;

    const-string v5, "CURRENCY_KRW"

    const-string v8, "\u97e9\u5143"

    const-string v9, "KRW"

    const v10, 0x44877000

    const-string v11, "\u20a9"

    move v6, v14

    move v7, v15

    invoke-direct/range {v4 .. v11}, Lcom/zhangdan/app/util/CurrencyUtil;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;FLjava/lang/String;)V

    sput-object v4, Lcom/zhangdan/app/util/CurrencyUtil;->CURRENCY_KRW:Lcom/zhangdan/app/util/CurrencyUtil;

    .line 15
    new-instance v4, Lcom/zhangdan/app/util/CurrencyUtil;

    const-string v5, "CURRENCY_JPY"

    const/4 v7, 0x6

    const-string v8, "\u65e5\u5143"

    const-string v9, "JPY"

    const v10, 0x42b9428f

    const-string v11, "\u00a5"

    move v6, v15

    invoke-direct/range {v4 .. v11}, Lcom/zhangdan/app/util/CurrencyUtil;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;FLjava/lang/String;)V

    sput-object v4, Lcom/zhangdan/app/util/CurrencyUtil;->CURRENCY_JPY:Lcom/zhangdan/app/util/CurrencyUtil;

    .line 8
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/zhangdan/app/util/CurrencyUtil;

    const/4 v1, 0x0

    sget-object v2, Lcom/zhangdan/app/util/CurrencyUtil;->CURRENCY_RMB:Lcom/zhangdan/app/util/CurrencyUtil;

    aput-object v2, v0, v1

    sget-object v1, Lcom/zhangdan/app/util/CurrencyUtil;->CURRENCY_USD:Lcom/zhangdan/app/util/CurrencyUtil;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zhangdan/app/util/CurrencyUtil;->CURRENCY_HKD:Lcom/zhangdan/app/util/CurrencyUtil;

    aput-object v1, v0, v12

    sget-object v1, Lcom/zhangdan/app/util/CurrencyUtil;->CURRENCY_EUR:Lcom/zhangdan/app/util/CurrencyUtil;

    aput-object v1, v0, v13

    sget-object v1, Lcom/zhangdan/app/util/CurrencyUtil;->CURRENCY_KRW:Lcom/zhangdan/app/util/CurrencyUtil;

    aput-object v1, v0, v14

    sget-object v1, Lcom/zhangdan/app/util/CurrencyUtil;->CURRENCY_JPY:Lcom/zhangdan/app/util/CurrencyUtil;

    aput-object v1, v0, v15

    sput-object v0, Lcom/zhangdan/app/util/CurrencyUtil;->$VALUES:[Lcom/zhangdan/app/util/CurrencyUtil;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;FLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"
    .parameter "desc"
    .parameter "code"
    .parameter "rate"
    .parameter "symbol"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "F",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput p3, p0, Lcom/zhangdan/app/util/CurrencyUtil;->value:I

    .line 25
    iput-object p4, p0, Lcom/zhangdan/app/util/CurrencyUtil;->desc:Ljava/lang/String;

    .line 26
    iput-object p5, p0, Lcom/zhangdan/app/util/CurrencyUtil;->code:Ljava/lang/String;

    .line 27
    iput p6, p0, Lcom/zhangdan/app/util/CurrencyUtil;->rate:F

    .line 28
    iput-object p7, p0, Lcom/zhangdan/app/util/CurrencyUtil;->symbol:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public static getCurrencySymbol(I)Ljava/lang/String;
    .locals 1
    .parameter "currencyType"

    .prologue
    .line 69
    packed-switch p0, :pswitch_data_0

    .line 83
    const-string v0, ""

    :goto_0
    return-object v0

    .line 71
    :pswitch_0
    sget-object v0, Lcom/zhangdan/app/util/CurrencyUtil;->CURRENCY_RMB:Lcom/zhangdan/app/util/CurrencyUtil;

    invoke-virtual {v0}, Lcom/zhangdan/app/util/CurrencyUtil;->getSymbol()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 73
    :pswitch_1
    sget-object v0, Lcom/zhangdan/app/util/CurrencyUtil;->CURRENCY_USD:Lcom/zhangdan/app/util/CurrencyUtil;

    invoke-virtual {v0}, Lcom/zhangdan/app/util/CurrencyUtil;->getSymbol()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 75
    :pswitch_2
    sget-object v0, Lcom/zhangdan/app/util/CurrencyUtil;->CURRENCY_HKD:Lcom/zhangdan/app/util/CurrencyUtil;

    invoke-virtual {v0}, Lcom/zhangdan/app/util/CurrencyUtil;->getSymbol()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 77
    :pswitch_3
    sget-object v0, Lcom/zhangdan/app/util/CurrencyUtil;->CURRENCY_EUR:Lcom/zhangdan/app/util/CurrencyUtil;

    invoke-virtual {v0}, Lcom/zhangdan/app/util/CurrencyUtil;->getSymbol()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 79
    :pswitch_4
    sget-object v0, Lcom/zhangdan/app/util/CurrencyUtil;->CURRENCY_KRW:Lcom/zhangdan/app/util/CurrencyUtil;

    invoke-virtual {v0}, Lcom/zhangdan/app/util/CurrencyUtil;->getSymbol()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 81
    :pswitch_5
    sget-object v0, Lcom/zhangdan/app/util/CurrencyUtil;->CURRENCY_JPY:Lcom/zhangdan/app/util/CurrencyUtil;

    invoke-virtual {v0}, Lcom/zhangdan/app/util/CurrencyUtil;->getSymbol()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zhangdan/app/util/CurrencyUtil;
    .locals 1
    .parameter "name"

    .prologue
    .line 8
    const-class v0, Lcom/zhangdan/app/util/CurrencyUtil;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/util/CurrencyUtil;

    return-object v0
.end method

.method public static values()[Lcom/zhangdan/app/util/CurrencyUtil;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/zhangdan/app/util/CurrencyUtil;->$VALUES:[Lcom/zhangdan/app/util/CurrencyUtil;

    invoke-virtual {v0}, [Lcom/zhangdan/app/util/CurrencyUtil;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zhangdan/app/util/CurrencyUtil;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zhangdan/app/util/CurrencyUtil;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/zhangdan/app/util/CurrencyUtil;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getRate()F
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/zhangdan/app/util/CurrencyUtil;->rate:F

    return v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/zhangdan/app/util/CurrencyUtil;->symbol:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/zhangdan/app/util/CurrencyUtil;->value:I

    return v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .parameter "code"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/zhangdan/app/util/CurrencyUtil;->code:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .parameter "desc"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/zhangdan/app/util/CurrencyUtil;->desc:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setRate(F)V
    .locals 0
    .parameter "rate"

    .prologue
    .line 53
    iput p1, p0, Lcom/zhangdan/app/util/CurrencyUtil;->rate:F

    .line 54
    return-void
.end method

.method public setSymbol(Ljava/lang/String;)V
    .locals 0
    .parameter "symbol"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/zhangdan/app/util/CurrencyUtil;->symbol:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setValue(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 35
    iput p1, p0, Lcom/zhangdan/app/util/CurrencyUtil;->value:I

    .line 36
    return-void
.end method
