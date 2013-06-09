.class final Lcom/zhangdan/app/activities/setting/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/setting/LockActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/setting/LockActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/setting/c;->a:Lcom/zhangdan/app/activities/setting/LockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/c;->a:Lcom/zhangdan/app/activities/setting/LockActivity;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/setting/LockActivity;->dismissDialog(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/c;->a:Lcom/zhangdan/app/activities/setting/LockActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/setting/LockActivity;->a(Lcom/zhangdan/app/activities/setting/LockActivity;)V

    return-void
.end method
