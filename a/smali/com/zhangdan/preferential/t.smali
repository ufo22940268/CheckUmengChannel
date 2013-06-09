.class Lcom/zhangdan/preferential/t;
.super Lcom/zhangdan/app/activities/WrappedActivity;


# instance fields
.field protected c:Lcom/zhangdan/preferential/a/f;

.field protected d:Lcom/zhangdan/preferential/a/ab;

.field protected e:Lcom/zhangdan/preferential/a/i;

.field protected f:Lcom/zhangdan/preferential/a/o;

.field protected g:Lcom/a/a/a/f/b;

.field protected h:Lcom/a/a/a/a;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/t;->g:Lcom/a/a/a/f/b;

    invoke-virtual {v0, p2, p0}, Lcom/a/a/a/f/b;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/a/a/a/f/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/t;->h:Lcom/a/a/a/a;

    invoke-virtual {v0}, Lcom/a/a/a/a;->a()Lcom/a/a/a/e/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/a/a/a/e/b;->a(Landroid/widget/ImageView;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/zhangdan/preferential/a/i;

    invoke-direct {v0}, Lcom/zhangdan/preferential/a/i;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/t;->e:Lcom/zhangdan/preferential/a/i;

    new-instance v0, Lcom/zhangdan/preferential/a/o;

    invoke-direct {v0}, Lcom/zhangdan/preferential/a/o;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/t;->f:Lcom/zhangdan/preferential/a/o;

    new-instance v0, Lcom/zhangdan/preferential/a/ab;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/a/ab;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/t;->d:Lcom/zhangdan/preferential/a/ab;

    new-instance v0, Lcom/zhangdan/preferential/a/f;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/a/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/t;->c:Lcom/zhangdan/preferential/a/f;

    invoke-static {}, Lcom/zhangdan/app/ZhangdanApplication;->f()Lcom/a/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/t;->h:Lcom/a/a/a/a;

    const v0, 0x7f02026c

    invoke-static {p0, v0}, Lcom/a/a/a/f/b;->a(Landroid/content/Context;I)Lcom/a/a/a/f/b;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/t;->g:Lcom/a/a/a/f/b;

    iget-object v0, p0, Lcom/zhangdan/preferential/t;->g:Lcom/a/a/a/f/b;

    invoke-virtual {v0}, Lcom/a/a/a/f/b;->a()V

    iget-object v0, p0, Lcom/zhangdan/preferential/t;->g:Lcom/a/a/a/f/b;

    invoke-virtual {v0}, Lcom/a/a/a/f/b;->b()V

    return-void
.end method
