<template>
  <!-- Main Container -->
  <main id="main-container">
    <!-- Hero -->
    <div class="bg-body-light">
      <div class="content content-full">
        <div
          class="d-flex flex-column flex-sm-row justify-content-sm-between align-items-sm-center"
        >
          <h1 class="flex-sm-fill h3 my-2">
            Đặt tour
            <small
              class="d-block d-sm-inline-block mt-2 mt-sm-0 font-size-base font-w400 text-muted"
            >Danh sách đặt tour</small>
          </h1>
          <nav class="flex-sm-00-auto ml-sm-3" aria-label="breadcrumb">
            <ol class="breadcrumb breadcrumb-alt">
              <li class="breadcrumb-item">Nhân viên</li>
              <li class="breadcrumb-item" aria-current="page">
                <a class="link-fx" href>Đặt tour</a>
              </li>
            </ol>
          </nav>
        </div>
      </div>
    </div>
    <!-- END Hero -->

    <!-- Page Content -->
    <div class="content">
      <!-- Full Table -->
      <div class="block">
        <div class="block-header">
          <h3 class="block-title"></h3>
          <div class="block-options">
            <!-- <button type="button" class="btn-block-option">
              <i class="si si-settings"></i>
            </button>-->
            <!-- <button class="btn btn-success" @click="newModal">
              <i class="fas fa-plus white fa-fw"></i>
            </button> -->
          </div>
        </div>
        <div class="block-content">
          <div class="table-responsive">
            <table class="table table-bordered table-striped table-vcenter">
              <thead>
                <tr>
                  <th>Mã vé</th>
                  <th>Ngày đặt</th>
                  <th>Mã khách hàng</th>
                  <th>Mã lịch trình</th>
                  <th>Ngày khởi hành</th>
                  <th>Số người lớn</th>
                  <th>Số trẻ em</th>
                  <th>Tổng giá vé</th>
                  <th>Tình trạng</th>
                  <th class="text-center" style="width: 150px;">Thao tác</th>
                </tr>
              </thead>
              <tbody>
                
              </tbody>
            </table>
          </div>
          
        </div>
      </div>
      <!-- END Full Table -->
    </div>
    <!-- END Page Content -->
  </main>
  <!-- END Main Container -->
</template>

<script>
export default {
  data() {
    return {
    }
  },
  methods: {
  },
  created() {

  }
};
</script>
