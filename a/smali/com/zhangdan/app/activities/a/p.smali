.class final Lcom/zhangdan/app/activities/a/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/a/n;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Lcom/zhangdan/app/data/model/j;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/a/n;Landroid/content/Context;Lcom/zhangdan/app/data/model/j;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/a/p;->a:Lcom/zhangdan/app/activities/a/n;

    iput-object p2, p0, Lcom/zhangdan/app/activities/a/p;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/zhangdan/app/activities/a/p;->c:Lcom/zhangdan/app/data/model/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/app/activities/a/p;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/zhangdan/app/activities/a/p;->c:Lcom/zhangdan/app/data/model/j;

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/a/j;->b(Landroid/content/Context;Lcom/zhangdan/app/data/model/j;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/a/p;->a:Lcom/zhangdan/app/activities/a/n;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/a/n;->dismiss()V

    return-void
.end method
