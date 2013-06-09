.class final Lcom/zhangdan/app/activities/chart/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/chart/s;

.field private final synthetic b:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/chart/s;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/t;->a:Lcom/zhangdan/app/activities/chart/s;

    iput-object p2, p0, Lcom/zhangdan/app/activities/chart/t;->b:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/t;->a:Lcom/zhangdan/app/activities/chart/s;

    invoke-static {v0}, Lcom/zhangdan/app/activities/chart/s;->a(Lcom/zhangdan/app/activities/chart/s;)Lcom/zhangdan/app/activities/chart/u;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/t;->a:Lcom/zhangdan/app/activities/chart/s;

    invoke-static {v0}, Lcom/zhangdan/app/activities/chart/s;->a(Lcom/zhangdan/app/activities/chart/s;)Lcom/zhangdan/app/activities/chart/u;

    move-result-object v1

    if-nez p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/zhangdan/app/activities/chart/u;->a(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/t;->b:[Ljava/lang/String;

    aget-object v0, v0, p2

    goto :goto_0
.end method
