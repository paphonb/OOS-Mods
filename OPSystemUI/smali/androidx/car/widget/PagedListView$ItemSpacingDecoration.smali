.class Landroidx/car/widget/PagedListView$ItemSpacingDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "PagedListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/widget/PagedListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemSpacingDecoration"
.end annotation


# instance fields
.field private mItemSpacing:I


# direct methods
.method private constructor <init>(I)V
    .locals 0
    .param p1, "itemSpacing"    # I

    .line 1284
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 1285
    iput p1, p0, Landroidx/car/widget/PagedListView$ItemSpacingDecoration;->mItemSpacing:I

    .line 1286
    return-void
.end method

.method synthetic constructor <init>(ILandroidx/car/widget/PagedListView$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroidx/car/widget/PagedListView$1;

    .line 1281
    invoke-direct {p0, p1}, Landroidx/car/widget/PagedListView$ItemSpacingDecoration;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 2
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 1291
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 1292
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 1295
    .local v0, "position":I
    invoke-virtual {p4}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1296
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v7/widget/GridLayoutManager;

    if-nez v1, :cond_0

    .line 1297
    return-void

    .line 1300
    :cond_0
    iget v1, p0, Landroidx/car/widget/PagedListView$ItemSpacingDecoration;->mItemSpacing:I

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 1301
    return-void
.end method
