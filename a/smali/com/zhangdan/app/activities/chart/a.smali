.class public final Lcom/zhangdan/app/activities/chart/a;
.super Landroid/support/v4/app/Fragment;


# static fields
.field public static a:Ljava/util/List;

.field public static b:Ljava/util/List;

.field public static c:Ljava/util/ArrayList;

.field public static d:Ljava/util/List;


# instance fields
.field private e:Lcom/zhangdan/app/activities/chart/g;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/chart/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "user_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/chart/a;->f:Ljava/lang/String;

    const-string v1, "year"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/zhangdan/app/activities/chart/a;->g:I

    const-string v1, "month"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/activities/chart/a;->h:I

    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const v0, 0x7f030072

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/zhangdan/app/activities/chart/g;

    invoke-direct {v1, v0, p0}, Lcom/zhangdan/app/activities/chart/g;-><init>(Landroid/view/View;Landroid/support/v4/app/Fragment;)V

    iput-object v1, p0, Lcom/zhangdan/app/activities/chart/a;->e:Lcom/zhangdan/app/activities/chart/g;

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/a;->e:Lcom/zhangdan/app/activities/chart/g;

    sget-object v2, Lcom/zhangdan/app/activities/chart/a;->a:Ljava/util/List;

    sget-object v3, Lcom/zhangdan/app/activities/chart/a;->b:Ljava/util/List;

    sget-object v4, Lcom/zhangdan/app/activities/chart/a;->c:Ljava/util/ArrayList;

    sget-object v5, Lcom/zhangdan/app/activities/chart/a;->d:Ljava/util/List;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/zhangdan/app/activities/chart/g;->a(Ljava/util/List;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/List;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/a;->e:Lcom/zhangdan/app/activities/chart/g;

    iget-object v2, p0, Lcom/zhangdan/app/activities/chart/a;->f:Ljava/lang/String;

    iget v3, p0, Lcom/zhangdan/app/activities/chart/a;->g:I

    iget v4, p0, Lcom/zhangdan/app/activities/chart/a;->h:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/zhangdan/app/activities/chart/g;->a(Ljava/lang/String;II)V

    return-object v0
.end method

.method public final onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/a;->e:Lcom/zhangdan/app/activities/chart/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/a;->e:Lcom/zhangdan/app/activities/chart/g;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/g;->a()V

    iput-object v1, p0, Lcom/zhangdan/app/activities/chart/a;->e:Lcom/zhangdan/app/activities/chart/g;

    :cond_0
    sput-object v1, Lcom/zhangdan/app/activities/chart/a;->a:Ljava/util/List;

    sput-object v1, Lcom/zhangdan/app/activities/chart/a;->b:Ljava/util/List;

    sput-object v1, Lcom/zhangdan/app/activities/chart/a;->c:Ljava/util/ArrayList;

    sput-object v1, Lcom/zhangdan/app/activities/chart/a;->d:Ljava/util/List;

    return-void
.end method
