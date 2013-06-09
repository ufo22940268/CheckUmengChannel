.class final Lcom/zhangdan/app/activities/alipay/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/alipay/AlipayActivity;

.field private final synthetic b:J

.field private final synthetic c:I

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:[Ljava/lang/String;

.field private final synthetic f:Ljava/lang/String;

.field private final synthetic g:Ljava/lang/String;

.field private final synthetic h:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/alipay/AlipayActivity;JILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/alipay/a;->a:Lcom/zhangdan/app/activities/alipay/AlipayActivity;

    iput-wide p2, p0, Lcom/zhangdan/app/activities/alipay/a;->b:J

    iput p4, p0, Lcom/zhangdan/app/activities/alipay/a;->c:I

    iput-object p5, p0, Lcom/zhangdan/app/activities/alipay/a;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/zhangdan/app/activities/alipay/a;->e:[Ljava/lang/String;

    iput-object p7, p0, Lcom/zhangdan/app/activities/alipay/a;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/zhangdan/app/activities/alipay/a;->g:Ljava/lang/String;

    iput-object p9, p0, Lcom/zhangdan/app/activities/alipay/a;->h:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    :try_start_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/zhangdan/app/activities/alipay/b;

    iget-object v1, p0, Lcom/zhangdan/app/activities/alipay/a;->a:Lcom/zhangdan/app/activities/alipay/AlipayActivity;

    invoke-direct {v0, v1}, Lcom/zhangdan/app/activities/alipay/b;-><init>(Lcom/zhangdan/app/activities/alipay/AlipayActivity;)V

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/zhangdan/app/activities/alipay/a;->b:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/zhangdan/app/activities/alipay/a;->c:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/zhangdan/app/activities/alipay/a;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/zhangdan/app/activities/alipay/a;->e:[Ljava/lang/String;

    aget-object v3, v3, p2

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/zhangdan/app/activities/alipay/a;->f:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/zhangdan/app/activities/alipay/a;->g:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/zhangdan/app/activities/alipay/a;->h:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/alipay/b;->b([Ljava/lang/Object;)Lcom/a/a/a/e/a/a;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
