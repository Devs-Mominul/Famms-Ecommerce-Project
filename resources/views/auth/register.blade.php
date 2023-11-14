<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Corona Admin</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="{{ asset('backend') }}/assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="{{ asset('backend') }}/assets/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="{{ asset('backend') }}/assets/css/style.css">
    <!-- End layout styles -->
    <link rel="shortcut icon" href="{{ asset('backend') }}/assets/images/favicon.png" />
  </head>
  <body>
    <div class="container-scroller">
      <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="m-0 row w-100">
          <div class="content-wrapper full-page-wrapper d-flex align-items-center auth login-bg">
            <div class="mx-auto card col-lg-4">
              <div class="px-5 py-5 card-body">
                <h3 class="mb-3 text-left card-title">Register</h3>
                <form action="{{ route('register') }}" method="POST">
                    @csrf
                  <div class="form-group">
                    <label>Username</label>
                    <input type="text" class="form-control p_input" name="name">
                    @error('name')
                    <span class="text-danger">{{ $message }}</span>
                    @enderror
                  </div>
                  <div class="form-group">
                    <label>Email</label>
                    <input type="email" class="form-control p_input" name="email">
                    @error('email')
                    <span class="text-danger">{{ $message }}</span>
                    @enderror
                  </div>
                  <div class="form-group">
                    <label>User Type</label>
                    <input type="number" class="form-control p_input" name="usertype">
                    @error('usertype')
                    <span class="text-danger">{{ $message }}</span>
                    @enderror
                  </div>
                  <div class="form-group">
                    <label>Phone</label>
                    <input type="text" class="form-control p_input" name="phone">
                    @error('phone')
                    <span class="text-danger">{{ $message }}</span>
                    @enderror
                  </div>
                  <div class="form-group">
                    <label>Address</label>
                    <input type="text" class="form-control p_input" name="address">
                    @error('address')
                    <span class="text-danger">{{ $message }}</span>
                    @enderror
                  </div>

                  <div class="form-group">
                    <label>Password</label>
                    <input type="password" class="form-control p_input" name="password">
                    @error('password')
                    <span class="text-danger">{{ $message }}</span>
                    @enderror
                  </div>

                  <div class="text-center">
                    <button type="submit" class="btn btn-primary btn-block ">Login</button>
                  </div>

                  <p class="text-center sign-up">Already have an Account?<a href="#"> Sign Up</a></p>
                  <p class="terms">By creating an account you are accepting our<a href="#"> Terms & Conditions</a></p>
                </form>
              </div>
            </div>
          </div>
          <!-- content-wrapper ends -->
        </div>
        <!-- row ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="{{ asset('backend') }}/assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="{{ asset('backend') }}/assets/js/off-canvas.js"></script>
    <script src="{{ asset('backend') }}/assets/js/hoverable-collapse.js"></script>
    <script src="{{ asset('backend') }}/assets/js/misc.js"></script>
    <script src="{{ asset('backend') }}/assets/js/settings.js"></script>
    <script src="{{ asset('backend') }}/assets/js/todolist.js"></script>
    <!-- endinject -->
  </body>
</html>
