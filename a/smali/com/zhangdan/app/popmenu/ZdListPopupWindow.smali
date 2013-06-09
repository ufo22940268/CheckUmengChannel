.class public Lcom/zhangdan/app/popmenu/ZdListPopupWindow;
.super Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020306

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setModal(Z)V

    invoke-virtual {p0}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->getListView()Landroid/widget/ListView;

    return-void
.end method
