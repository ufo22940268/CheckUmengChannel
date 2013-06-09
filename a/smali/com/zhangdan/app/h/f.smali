.class public final enum Lcom/zhangdan/app/h/f;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/zhangdan/app/h/f;

.field public static final enum b:Lcom/zhangdan/app/h/f;

.field public static final enum c:Lcom/zhangdan/app/h/f;

.field public static final enum d:Lcom/zhangdan/app/h/f;

.field public static final enum e:Lcom/zhangdan/app/h/f;

.field public static final enum f:Lcom/zhangdan/app/h/f;

.field private static final synthetic l:[Lcom/zhangdan/app/h/f;


# instance fields
.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:F

.field private k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v15, 0x5

    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v3, 0x1

    new-instance v0, Lcom/zhangdan/app/h/f;

    const-string v1, "CURRENCY_RMB"

    const/4 v2, 0x0

    const-string v4, "\u4eba\u6c11\u5e01"

    const-string v5, "RMB"

    const v6, 0x40c70a3d

    const-string v7, "\uffe5"

    invoke-direct/range {v0 .. v7}, Lcom/zhangdan/app/h/f;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;FLjava/lang/String;)V

    sput-object v0, Lcom/zhangdan/app/h/f;->a:Lcom/zhangdan/app/h/f;

    new-instance v1, Lcom/zhangdan/app/h/f;

    const-string v2, "CURRENCY_USD"

    const-string v5, "\u7f8e\u5143"

    const-string v6, "USD"

    const/high16 v7, 0x3f80

    const-string v8, "$"

    move v4, v12

    invoke-direct/range {v1 .. v8}, Lcom/zhangdan/app/h/f;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;FLjava/lang/String;)V

    sput-object v1, Lcom/zhangdan/app/h/f;->b:Lcom/zhangdan/app/h/f;

    new-instance v4, Lcom/zhangdan/app/h/f;

    const-string v5, "CURRENCY_HKD"

    const-string v8, "\u6e2f\u5e01"

    const-string v9, "HKD"

    const v10, 0x40f851ec

    const-string v11, "\ufe69"

    move v6, v12

    move v7, v13

    invoke-direct/range {v4 .. v11}, Lcom/zhangdan/app/h/f;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;FLjava/lang/String;)V

    sput-object v4, Lcom/zhangdan/app/h/f;->c:Lcom/zhangdan/app/h/f;

    new-instance v4, Lcom/zhangdan/app/h/f;

    const-string v5, "CURRENCY_EUR"

    const-string v8, "\u6b27\u5143"

    const-string v9, "EUR"

    const v10, 0x3f428f5c

    const-string v11, "\u20ac"

    move v6, v13

    move v7, v14

    invoke-direct/range {v4 .. v11}, Lcom/zhangdan/app/h/f;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;FLjava/lang/String;)V

    sput-object v4, Lcom/zhangdan/app/h/f;->d:Lcom/zhangdan/app/h/f;

    new-instance v4, Lcom/zhangdan/app/h/f;

    const-string v5, "CURRENCY_KRW"

    const-string v8, "\u97e9\u5143"

    const-string v9, "KRW"

    const v10, 0x44877000

    const-string v11, "\u20a9"

    move v6, v14

    move v7, v15

    invoke-direct/range {v4 .. v11}, Lcom/zhangdan/app/h/f;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;FLjava/lang/String;)V

    sput-object v4, Lcom/zhangdan/app/h/f;->e:Lcom/zhangdan/app/h/f;

    new-instance v4, Lcom/zhangdan/app/h/f;

    const-string v5, "CURRENCY_JPY"

    const/4 v7, 0x6

    const-string v8, "\u65e5\u5143"

    const-string v9, "JPY"

    const v10, 0x42b9428f

    const-string v11, "\u00a5"

    move v6, v15

    invoke-direct/range {v4 .. v11}, Lcom/zhangdan/app/h/f;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;FLjava/lang/String;)V

    sput-object v4, Lcom/zhangdan/app/h/f;->f:Lcom/zhangdan/app/h/f;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/zhangdan/app/h/f;

    const/4 v1, 0x0

    sget-object v2, Lcom/zhangdan/app/h/f;->a:Lcom/zhangdan/app/h/f;

    aput-object v2, v0, v1

    sget-object v1, Lcom/zhangdan/app/h/f;->b:Lcom/zhangdan/app/h/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zhangdan/app/h/f;->c:Lcom/zhangdan/app/h/f;

    aput-object v1, v0, v12

    sget-object v1, Lcom/zhangdan/app/h/f;->d:Lcom/zhangdan/app/h/f;

    aput-object v1, v0, v13

    sget-object v1, Lcom/zhangdan/app/h/f;->e:Lcom/zhangdan/app/h/f;

    aput-object v1, v0, v14

    sget-object v1, Lcom/zhangdan/app/h/f;->f:Lcom/zhangdan/app/h/f;

    aput-object v1, v0, v15

    sput-object v0, Lcom/zhangdan/app/h/f;->l:[Lcom/zhangdan/app/h/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;FLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/zhangdan/app/h/f;->g:I

    iput-object p4, p0, Lcom/zhangdan/app/h/f;->h:Ljava/lang/String;

    iput-object p5, p0, Lcom/zhangdan/app/h/f;->i:Ljava/lang/String;

    iput p6, p0, Lcom/zhangdan/app/h/f;->j:F

    iput-object p7, p0, Lcom/zhangdan/app/h/f;->k:Ljava/lang/String;

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/zhangdan/app/h/f;->a:Lcom/zhangdan/app/h/f;

    iget-object v0, v0, Lcom/zhangdan/app/h/f;->k:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/zhangdan/app/h/f;->b:Lcom/zhangdan/app/h/f;

    iget-object v0, v0, Lcom/zhangdan/app/h/f;->k:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/zhangdan/app/h/f;->c:Lcom/zhangdan/app/h/f;

    iget-object v0, v0, Lcom/zhangdan/app/h/f;->k:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/zhangdan/app/h/f;->d:Lcom/zhangdan/app/h/f;

    iget-object v0, v0, Lcom/zhangdan/app/h/f;->k:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/zhangdan/app/h/f;->e:Lcom/zhangdan/app/h/f;

    iget-object v0, v0, Lcom/zhangdan/app/h/f;->k:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/zhangdan/app/h/f;->f:Lcom/zhangdan/app/h/f;

    iget-object v0, v0, Lcom/zhangdan/app/h/f;->k:Ljava/lang/String;

    goto :goto_0

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

.method public static valueOf(Ljava/lang/String;)Lcom/zhangdan/app/h/f;
    .locals 1

    const-class v0, Lcom/zhangdan/app/h/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/h/f;

    return-object v0
.end method

.method public static values()[Lcom/zhangdan/app/h/f;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/zhangdan/app/h/f;->l:[Lcom/zhangdan/app/h/f;

    array-length v1, v0

    new-array v2, v1, [Lcom/zhangdan/app/h/f;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/h/f;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final b()F
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/h/f;->j:F

    return v0
.end method
