.class final Lcom/zhangdan/app/activities/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/a/k;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Lcom/zhangdan/app/data/model/j;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/a/k;Landroid/content/Context;Lcom/zhangdan/app/data/model/j;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/a/l;->a:Lcom/zhangdan/app/activities/a/k;

    iput-object p2, p0, Lcom/zhangdan/app/activities/a/l;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/zhangdan/app/activities/a/l;->c:Lcom/zhangdan/app/data/model/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/app/activities/a/l;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/zhangdan/app/activities/a/l;->c:Lcom/zhangdan/app/data/model/j;

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/a/j;->a(Landroid/content/Context;Lcom/zhangdan/app/data/model/j;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/a/l;->a:Lcom/zhangdan/app/activities/a/k;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/a/k;->dismiss()V

    return-void
.end method
